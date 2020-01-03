/*

byte 0 : altijd ^
byte 1 : command (H = home, M = move)
byte 2 : to_pos (6 lang, max 999999)
byte 3 : to_pos 
byte 4 : to_pos 
byte 5 : to_pos 
byte 6 : to_pos 
byte 7 : to_pos 
byte 8 : delay tussen steps (6 lang, max 999999 usec = 1 sec)
byte 9 : delay tussen steps
byte 10: delay tussen steps
byte 11: delay tussen steps
byte 12: delay tussen steps
byte 13: delay tussen steps
byte 14: m0
byte 15: m1
byte 16: m2

states:
0: homing needed
1: ready
2: moving
3: homing
4: error (out of range)

send: state + pos

*/

#include <Wire.h>

#define SLAVE_ADDRESS 0x05
#define NR_OF_BYTES_TO_READ 17

#define HOMING_NEEDED 0
#define READY 1
#define MOVING 2
#define HOMING 3
#define IN_ERROR 4

#define dirPin 2
#define stepPin 3
#define stepsPerRevolution 200
#define arm1SensorPin 4
#define button1Pin 5
#define button2Pin 6
//#define home_motor_speed 800
//#define max_motor_speed 800

  char command;
  int requestedPos;
  int stepDelay;
  bool m0;
  bool m1;
  bool m2;

char number[50];
int state = HOMING_NEEDED;
int readPos = 0;
int currentPos = 0;

int button1State = 0;
int button2State = 0;
int arm1State = 0;
int currentDir = -1;
int newDir = 0;
int turn = 0;
int homeFinished = 0;



void setup() {
  // initialize i2c as slave
  Serial.begin(9600);
  Serial.print("Slave on adress:");
  Serial.println(SLAVE_ADDRESS);
  
  Wire.begin(SLAVE_ADDRESS);
  Wire.onReceive(receiveData);
  Wire.onRequest(sendData);

  pinMode(arm1SensorPin, INPUT);
  pinMode(button1Pin, INPUT);
  pinMode(button2Pin, INPUT);
  pinMode(stepPin, OUTPUT);
  pinMode(dirPin, OUTPUT);
}

void loop() {
  processCommand();
} 

void sendData(){
  Wire.write(state);
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
//    Command command = parseCommand();
    //currentCommand = command;
//    Serial.print("SET CURRENT COMMAND"); 
//    currentCommand = {
//      command.command,
//      command.requestedPos,
//      command.stepDelay,
//      command.m0, 
//      command.m1, 
//      command.m2
//      };
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
//  Serial.println(buffer);
//  Serial.println(toPos);

  buffer[0] = number[8];
  buffer[1] = number[9];
  buffer[2] = number[10];
  buffer[3] = number[11];
  buffer[4] = number[12];
  buffer[5] = number[13];
  buffer[6] = '\0';
  int delay = atoi(buffer);

//  int toPos = 2110;
//  int delay = 1100;

//  Serial.println(buffer);
//  Serial.println(delay);

  m0 = number[14] == '1';
  m1 = number[15] == '1';
  m2 = number[16] == '1';
  stepDelay = delay;
  requestedPos = toPos;
  command = number[1];
  
//  Command command = {number[1],toPos,delay,m0, m1, m2}; 

//  Serial.print("- cmd:");Serial.println(command.command);
//  Serial.print("- pos:");Serial.println(command.requestedPos);
//  Serial.print("- delay:");Serial.println(command.stepDelay);
//  Serial.print("- m0:");Serial.println(command.m0);
//  Serial.print("- m1:");Serial.println(command.m1);
//  Serial.print("- m2:");Serial.println(command.m2);
//  Serial.print("- currentPos:");Serial.println(currentPos);  
//  return command; 


  Serial.print("- cmd:");Serial.println(command);
  Serial.print("- pos:");Serial.println(requestedPos);
  Serial.print("- delay:");Serial.println(stepDelay);
  Serial.print("- m0:");Serial.println(m0);
  Serial.print("- m1:");Serial.println(m1);
  Serial.print("- m2:");Serial.println(m2);
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
  Serial.print("m0:");Serial.println(m0);
  Serial.print("m1:");Serial.println(m1);
  Serial.print("m2:");Serial.println(m2);
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
  Serial.print("m0:");Serial.println(m0);
  Serial.print("m1:");Serial.println(m1);
  Serial.print("m2:");Serial.println(m2);
  Serial.print("currentPos:");Serial.println(currentPos);

  if (requestedPos>currentPos){
    moveUp(requestedPos);
  }
  else{
    moveDown(requestedPos);
  }

  state = READY;
  
  Serial.println("RESET CURRENT COMMAND");
  command = '-';
  
}

void moveUp(int reqPos){
  Serial.println("move up");    
  digitalWrite(dirPin, HIGH);
  while (currentPos<reqPos){
    pulse(stepPin);
    currentPos++;
  }
  Serial.println("up");    
}

void moveDown(int reqPos){
  Serial.println("move down");    
  digitalWrite(dirPin, LOW);
  while (currentPos>reqPos){
    pulse(stepPin);
    currentPos--;
  }
  Serial.println("down");    
}

void home() {
  arm1State = digitalRead(arm1SensorPin); 
    Serial.println("\t start homing");
    if (arm1State==1){
      // move down
      Serial.println("\t first move down until not high");
      digitalWrite(dirPin, LOW);
      while (digitalRead(arm1SensorPin)){
        digitalWrite(stepPin, HIGH);
        delayMicroseconds(stepDelay);
        digitalWrite(stepPin, LOW);
        delayMicroseconds(stepDelay);
      }
  
      Serial.println("\t move one extra round");
      for (int i = 0; i < 1 * stepsPerRevolution; i++) {
        pulse(stepPin);
      }
    }
  
    Serial.println("\t moving up");    
    digitalWrite(dirPin, HIGH);
    while (!digitalRead(arm1SensorPin)){
      pulse(stepPin);
    }    
  
    Serial.println("\t homing finished");
    currentPos = 00;

}



void pulse(int pin){
    digitalWrite(pin, HIGH);
    delayMicroseconds(stepDelay);
    digitalWrite(pin, LOW);
    delayMicroseconds(stepDelay);
}
