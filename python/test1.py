from smbus import SMBus
from PCA9685 import PWM
import time

fPWM = 50
i2c_address = 0x40 # (standard) adapt to your module
channel = 0 # adapt to your wiring
a = 8.5 # adapt to your servo
b = 2  # adapt to your servo

def setup():
    global pwm
    bus = SMBus(1) # Raspberry Pi revision 2
    pwm = PWM(bus, i2c_address)
    pwm.setFreq(fPWM)

def setDirection(direction, ch):
    duty = a / 180 * direction + b
    pwm.setDuty(ch, duty)
    #print "direction =", direction, "-> duty =", duty
    time.sleep(0.003) # allow to settle

print "starting"
setup()


# read adc
address = 0x48
A0 = 0x40
A1 = 0x41
A2 = 0x42
A3 = 0x43
bus2 = SMBus(1)
while True:
    print ("--")
    bus2.write_byte(address,A0)
    value0 = bus2.read_byte(address)
    print("bus0:%1.3f  " %(value0))

    bus2.write_byte(address,A1)
    value1 = bus2.read_byte(address)
    print("bus1:%1.3f  " %(value1))

    bus2.write_byte(address,A2)
    value2 = bus2.read_byte(address)
    print("bus2:%1.3f  " %(value2))

    bus2.write_byte(address,A3)
    value3 = bus2.read_byte(address)
    print("bus3:%1.3f  " %(value3))


    setDirection(value0,0)
    setDirection(value1,1)
    setDirection(value2,2)
    setDirection(value3,3)
    time.sleep(0.1)


print "done"
