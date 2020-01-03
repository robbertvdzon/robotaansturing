
const int arm1SensorPin = 3;     // the number of the pushbutton pin
const int button1Pin = 4;     // the number of the pushbutton pin
const int button2Pin = 5;     // the number of the pushbutton pin

int button1State = 0;
int button2State = 0;
int arm1State = 0;

void setup() {
  // initialize serial communications at 9600 bps:
  Serial.begin(9600);
  pinMode(arm1SensorPin, INPUT);
  pinMode(button1Pin, INPUT);
  pinMode(button2Pin, INPUT);
}

void loop() {
  button1State = digitalRead(button1Pin);
  button2State = digitalRead(button2Pin);
  arm1State = digitalRead(arm1SensorPin);
  Serial.print("\t arm1State = ");
  Serial.print(arm1State);
  Serial.print("\t button1State = ");
  Serial.print(button1State);
  Serial.print("\t button2State = ");
  Serial.println(button2State);
  delay(2);
}
