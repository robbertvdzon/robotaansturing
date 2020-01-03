/*

byte 0 : altijd #
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

struct Command {
  char command;
  int requesteedPos;
  int stepDelay;
  byte m0;
  byte m1;
  byte m2;
};

char number[50];
int state = HOMING_NEEDED;
int readPos = 0;
Command currentCommand = {'-',0,0,0,0,0};




//Code Initialization
void setup() {
  // initialize i2c as slave
  Serial.begin(9600);
  Serial.print("Slave on adress:");
  Serial.println(SLAVE_ADDRESS);
  
  Wire.begin(SLAVE_ADDRESS);
  Wire.onReceive(receiveData);
  Wire.onRequest(sendData);
}

void loop() {
  delay(1);
  processCommand(currentCommand);
  currentCommand = {'-',0,0,0,0,0};
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
    Command command = parseCommand();
    currentCommand = command;
  }
  
}


Command parseCommand(){
  Serial.print("parseCommand:"); 
  Serial.println(number);
  Command command = {number[1],0,0,0,0,0}; 
  return command; 
}

void processCommand(Command command ){
 if (command.command == 'H') home(command);
 if (command.command == 'M') move(command);
}

void home(Command command ){
  state = HOMING;
  Serial.println("home");
  delay(5000);
  state = READY;
}

void move(Command command ){
  state = MOVING;
  Serial.println("move");
  delay(5000);
  state = READY;
}

// callback for sending data
void sendData(){
  Serial.print("Sending:");
  Serial.println(state);
  Wire.write(state);
}

//End of the program
