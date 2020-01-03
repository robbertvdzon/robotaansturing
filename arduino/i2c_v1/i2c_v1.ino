/*
I2C Pinouts

SDA -> A4
SCL -> A5
*/

//Import the library required
#include <Wire.h>

//Slave Address for the Communication
#define SLAVE_ADDRESS 0x05

char number[50];
int state = 0;
int writeState = 0;

//Code Initialization
void setup() {
  // initialize i2c as slave
  Serial.begin(9600);
  Serial.print("Slave on adress:");
  Serial.println(SLAVE_ADDRESS);
  
  Wire.begin(SLAVE_ADDRESS);
 // define callbacks for i2c communication
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
  int i = 0;
  while(Wire.available()) {
    number[i] = Wire.read();
    i++;
  }
  number[i] = '\0';
  Serial.print(number);
  if (number[0]=='X'){
        writeState = 1;
  }
}  // end while

// callback for sending data
void sendData(){
  Wire.write(number);
}

//End of the program
