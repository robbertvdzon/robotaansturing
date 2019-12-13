import time
from smbus import SMBus
from PCA9685 import PWM

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

def setDirection(duty, ch):
    pwm.setDuty(0, duty)
    pwm.setDuty(1, duty)
    pwm.setDuty(2, duty)
    pwm.setDuty(3, duty)
    pwm.setDuty(4, duty)
    pwm.setDuty(5, duty)
    pwm.setDuty(6, duty)
    pwm.setDuty(7, duty)
    pwm.setDuty(8, duty)

print "starting 1"
setup()


print "to 1"
setDirection(1,0)
print "sleep"
time.sleep( 3 )
print "to 2"
setDirection(2,0)
time.sleep( 3 )
print "to 3"
setDirection(3,0)
time.sleep( 3 )
print "to 4"
setDirection(3,0)
