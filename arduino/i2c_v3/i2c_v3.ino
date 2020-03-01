/*

verschil met v1:
tijdens homen: motor altijd aan
tijdens niet-homen: bij homesensor==1 : zet motor in error


---
i2c protocol:
byte 0 : altijd ^
byte 1 : command (H = home, M = move)
byte 2 : to_pos (6 lang, max 999999)
byte 3 : to_pos 
byte 4 : to_pos 
byte 5 : to_pos 
byte 6 : to_pos 
byte 7 : to_pos 
byte 8 : min_delay tussen steps (6 lang, max 999999 usec = 1 sec)
byte 9 : min_delay tussen steps
byte 10: min_delay tussen steps
byte 11: min_delay tussen steps
byte 12: min_delay tussen steps
byte 13: min_delay tussen steps
byte 14: vertragings_factor (in percentage, dus 0135 = 1,35 keer zo snel, dus alle delays vermenigvuldigen met 1,35)
byte 15: vertragings_factor
byte 16: vertragings_factor
byte 17: vertragings_factor

states:
0: homing needed
1: ready
2: moving
3: homing
4: error (out of range)

send: state + pos

*/

#include <Wire.h>

#define NR_OF_BYTES_TO_READ 18

#define HOMING_NEEDED 0
#define READY 1
#define MOVING 2
#define HOMING 3
#define IN_ERROR 4

#define dirPin 3
#define stepPin 8
#define stepsPerRevolution 2000
#define arm1SensorPin 6
// #define topSensorPin 4 : NOT USED ANYMORE
// #define bottomSensorPin 7 : NOT USED ANYMORE
#define enableMotorPin 5
#define errorPin 9
#define adressPin1 10
#define adressPin2 11

char command;
int requestedPos;
int stepDelay;
int vertraginsfactor;

char number[50];
int state = HOMING_NEEDED;
int readPos = 0;
int currentPos = 0;
int arm1State = 0;
int currentDir = -1;
int newDir = 0;
int turn = 0;
int homeFinished = 0;
bool error = 0;

int SLAVE_ADDRESS = 5;


void setup() {

  pinMode(arm1SensorPin, INPUT);
//  pinMode(topSensorPin, INPUT);
//  pinMode(bottomSensorPin, INPUT);
  pinMode(stepPin, OUTPUT);
  pinMode(dirPin, OUTPUT);
  pinMode(enableMotorPin, OUTPUT);
  pinMode(errorPin, OUTPUT);
  pinMode(adressPin1, INPUT);
  pinMode(adressPin1, INPUT);

  boolean addr1 = digitalRead(adressPin1);
  boolean addr2 = digitalRead(adressPin2);

  if (addr1) SLAVE_ADDRESS = SLAVE_ADDRESS+1;
  if (addr2) SLAVE_ADDRESS = SLAVE_ADDRESS+2;

    
  Serial.begin(9600);
  Serial.print("Slave on adress:");
  Serial.println(SLAVE_ADDRESS);
  
  Wire.begin(SLAVE_ADDRESS);
  Wire.onReceive(receiveData);
  Wire.onRequest(sendData);

  digitalWrite(enableMotorPin, HIGH);
  
}

void loop() {
  processCommand();
  checkError();
} 

void sendData(){
  if (error){
    Wire.write(IN_ERROR);    
  }
  else{
    Wire.write(state);    
  }
}

void receiveData(int byteCount){
  while(Wire.available()) {
    processCharRead(Wire.read());
  }
}  

void processCharRead(char c){
  if (c == '^'){
    readPos = 0;
  }
  
  if (readPos < NR_OF_BYTES_TO_READ){
    number[readPos] = c;    
    number[readPos+1] = '\0';    
  }

  readPos ++;
  if (readPos == NR_OF_BYTES_TO_READ){
    parseCommand();
  }
}


void parseCommand(){
  Serial.print("parseCommand:"); 
  Serial.println(number);

  char buffer[7];

  buffer[0] = number[2];
  buffer[1] = number[3];
  buffer[2] = number[4];
  buffer[3] = number[5];
  buffer[4] = number[6];
  buffer[5] = number[7];
  buffer[6] = '\0';
  int toPos = atoi(buffer);


  buffer[0] = number[8];
  buffer[1] = number[9];
  buffer[2] = number[10];
  buffer[3] = number[11];
  buffer[4] = number[12];
  buffer[5] = number[13];
  buffer[6] = '\0';
  int delay = atoi(buffer);


  buffer[0] = number[14];
  buffer[1] = number[15];
  buffer[2] = number[16];
  buffer[3] = number[17];
  buffer[4] = '\0';
  int vertraginsfactor = atoi(buffer);

  long vLong =vertraginsfactor;
  if (vLong<100) vLong = 100;// alleen vertraginsfactor doen als hij ook echt vertraagd en niet versneld
  long delayLong = delay;
  long tmp1 = vLong*delayLong;
  long tmp2 = tmp1/100;

  stepDelay = tmp2;
  requestedPos = toPos;
  command = number[1];

  Serial.print("- cmd:");Serial.println(command);
  Serial.print("- pos:");Serial.println(requestedPos);
  Serial.print("- delay:");Serial.println(delay);
  Serial.print("- stepDelay:");Serial.println(stepDelay);
  Serial.print("- vertraginsfactor:");Serial.println(vertraginsfactor);
  Serial.print("- currentPos:");Serial.println(currentPos);
}

void processCommand(){
 if (command == 'H') home1();
 if (command == 'M') move();
}

void home1(){
  state = HOMING;
  Serial.println("home");
  Serial.print("cmd:");Serial.println(command);
  Serial.print("pos:");Serial.println(requestedPos);
  Serial.print("delay:");Serial.println(stepDelay);
  home();
  state = READY;
  Serial.println("RESET CURRENT COMMAND");
  command = '-';
}

void move(){
  state = MOVING;
  Serial.println("move");
  Serial.print("cmd:");Serial.println(command);
  Serial.print("pos:");Serial.println(requestedPos);
  Serial.print("delay:");Serial.println(stepDelay);
  Serial.print("currentPos:");Serial.println(currentPos);

  if (requestedPos>currentPos){
    moveUp(requestedPos);
  }
  else{
    moveDown(requestedPos);
  }

  state = READY;
  command = '-';
  
}

void checkError(){
  if (state == HOMING) return;

  boolean homeSensorOn = digitalRead(arm1SensorPin)==1;

  if (!homeSensorOn){
    if (error){
      Serial.println("Error fixed");
      error = false;
    }
  }
  else if (!error){
    Serial.println("Entering error mode");
    error = true;    
    digitalWrite(enableMotorPin, HIGH);
  }

  if (error ){
    digitalWrite(errorPin, HIGH);
  }
  else{
    digitalWrite(errorPin, LOW);    
  }
  
}

void moveUp(int reqPos){
  digitalWrite(enableMotorPin, LOW);

  Serial.println("move up");    
  digitalWrite(dirPin, HIGH);

  long time = 0;
  long delay = stepDelay;
  
  while (currentPos<reqPos){
    time = time + delay;
    pulse(stepPin, stepDelay);
    currentPos++;
  }
  Serial.print("time:");Serial.println(time);  
  Serial.print("delay:");Serial.println(delay);  

  Serial.println("up");    
  digitalWrite(enableMotorPin, HIGH);
}

void moveDown(int reqPos){
  digitalWrite(enableMotorPin, LOW);

  Serial.println("move down");    
  digitalWrite(dirPin, LOW);
  while (currentPos>reqPos){
    pulse(stepPin, stepDelay);
    currentPos--;
  }
  Serial.println("down");    
  digitalWrite(enableMotorPin, HIGH);
}

void home() {
  digitalWrite(enableMotorPin, LOW);
  error = false;

  arm1State = digitalRead(arm1SensorPin); 
  Serial.println("\t start homing");

  // move down until high   
  Serial.println("\t move fast down until high");
  digitalWrite(dirPin, LOW);
  while (!digitalRead(arm1SensorPin)){
    pulse(stepPin,stepDelay);
  }

  // move up until not high   
  Serial.println("\t move slow up until not high");
  stepDelay = stepDelay*1;
  digitalWrite(dirPin, HIGH);
  while (digitalRead(arm1SensorPin)){
    pulse(stepPin,stepDelay);
  }

  Serial.println("\t move one extra round");
    for (int i = 0; i < 1 * stepsPerRevolution; i++) {
      pulse(stepPin,stepDelay);
  } 
  
  Serial.println("\t homing finished");
  currentPos = 00;
  digitalWrite(enableMotorPin, HIGH);

}



void pulse(int pin, long delay){
    checkError();
    if (!error){
      digitalWrite(pin, HIGH);
      delayMicroseconds(delay);
      digitalWrite(pin, LOW);
      delayMicroseconds(delay);
    }
}
