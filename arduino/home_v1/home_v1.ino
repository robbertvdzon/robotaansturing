/*Example sketch to control a stepper motor with A4988/DRV8825 stepper motor driver and Arduino without a library. More info: https://www.makerguides.com */
// Define stepper motor connections and steps per revolution:
#define dirPin 2
#define stepPin 3
#define stepsPerRevolution 200
#define arm1SensorPin 4
#define button1Pin 5
#define button2Pin 6
#define home_motor_speed 400
#define max_motor_speed 400

int button1State = 0;
int button2State = 0;

int arm1State = 0;
int currentDir = -1;
int newDir = 0;
int turn = 0;
int homeFinished = 0;


void setup() {
  Serial.begin(9600);
  pinMode(arm1SensorPin, INPUT);
  pinMode(button1Pin, INPUT);
  pinMode(button2Pin, INPUT);

  pinMode(stepPin, OUTPUT);
  pinMode(dirPin, OUTPUT);
}

void home() {

  button1State = digitalRead(button1Pin);
  button2State = digitalRead(button2Pin);
  arm1State = digitalRead(arm1SensorPin);

  if (!homeFinished){
    Serial.print("\t start homing");
    if (arm1State==1){
      // move down
      Serial.println("\t first move down until not high");
      digitalWrite(dirPin, LOW);
      while (digitalRead(arm1SensorPin)){
        digitalWrite(stepPin, HIGH);
        delayMicroseconds(home_motor_speed);
        digitalWrite(stepPin, LOW);
        delayMicroseconds(home_motor_speed);
      }

      Serial.println("\t move one extra round");
      for (int i = 0; i < 1 * stepsPerRevolution; i++) {
        pulse(stepPin, home_motor_speed);
      }
    }

    Serial.println("\t moving up");    
    digitalWrite(dirPin, HIGH);
    while (!digitalRead(arm1SensorPin)){
      pulse(stepPin, home_motor_speed);
    }
    

    Serial.println("\t homing finished");
    homeFinished = 1;

  }
}


void controlWithButtons() {

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
    pulse(stepPin, max_motor_speed);
  }

}

void pulse(int pin, int delay){
    digitalWrite(pin, HIGH);
    delayMicroseconds(delay);
    digitalWrite(pin, LOW);
    delayMicroseconds(delay);
}

void loop() {
  home(); 
  controlWithButtons();
}
