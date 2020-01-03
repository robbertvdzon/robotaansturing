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


delay tussen steps: 2 bytes
m0: 1 byte
m1: 1 byte
m2: 1 byte

states:
0: homing needed
1: ready
2: moving
3: homing
4: error (out of range)

send: state + pos

*/

//Import the library required
#include <Wire.h>

//Slave Address for the Communication
#define SLAVE_ADDRESS 0x05

char number[50];
int state = 0;
int writeState = 0;


struct Command {
  char command;
  int requesteedPos;
  int stepDelay;
  byte m0;
  byte m1;
  byte m2;
};

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
  delay(100);
  if (writeState==1){
    Serial.print("writing state");
    writeState = 0;
  }
} // end loop

// callback for received data
void receiveData(int byteCount){
  Serial.print("bytes:");
  Serial.println(byteCount);
  int i = 0;
  while(Wire.available()) {
    number[i] = Wire.read();
    i++;
  }
  state++;
  number[i] = '\0';
  Serial.print(number);
  if (number[0]=='X'){
        writeState = 1;
  }
  Command command = {number[0],0,0,0,0,0};
  Serial.println("process command");
  processCommand(command);
}  // end while

void processCommand(Command command ){
 if (command.command == 'H') home(command);
 if (command.command == 'M') move(command);
}

void home(Command command ){
  Serial.println("home");
}

void move(Command command ){
  Serial.println("move");
}

// callback for sending data
void sendData(){
  Serial.print("Sending:");
  Serial.println(state);
  Wire.write('4');
}

//End of the program
