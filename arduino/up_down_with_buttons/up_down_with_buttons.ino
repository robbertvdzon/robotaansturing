/*Example sketch to control a stepper motor with A4988/DRV8825 stepper motor driver and Arduino without a library. More info: https://www.makerguides.com */
// Define stepper motor connections and steps per revolution:
#define dirPin 2
#define stepPin 3
#define stepsPerRevolution 200

const int arm1SensorPin = 4;     // the number of the pushbutton pin
const int button1Pin = 5;     // the number of the pushbutton pin
const int button2Pin = 6;     // the number of the pushbutton pin

int button1State = 0;
int button2State = 0;
int arm1State = 0;

int currentDir = -1;
int newDir = 0;
int turn = 0;


void setup() {
  Serial.begin(9600);
  pinMode(arm1SensorPin, INPUT);
  pinMode(button1Pin, INPUT);
  pinMode(button2Pin, INPUT);

  pinMode(stepPin, OUTPUT);
  pinMode(dirPin, OUTPUT);
}
void loop() {

  button1State = digitalRead(button1Pin);
  button2State = digitalRead(button2Pin);
  arm1State = digitalRead(arm1SensorPin);

  turn = 0;
  if (button1State==1){
    newDir = 1;
    turn = 1;
  }
  if (button2State==1){
    newDir = 0;
    turn = 1;
  }

  if (turn==1){
    if (currentDir!=newDir){
      Serial.println("\t change dir ");
      if (newDir==1){
        digitalWrite(dirPin, HIGH);
      }
      else{
        digitalWrite(dirPin, LOW);
      }
      currentDir = newDir;
    }
    digitalWrite(stepPin, HIGH);
    delayMicroseconds(2000);
    digitalWrite(stepPin, LOW);
    delayMicroseconds(1000);
  }

}
