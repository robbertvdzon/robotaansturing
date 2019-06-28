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
    print "direction =", direction, "-> duty =", duty
    time.sleep(0.003) # allow to settle

print "starting"
setup()

setDirection(80,0)
setDirection(80,1)
setDirection(80,2)
setDirection(80,3)
time.sleep(1) # allow to settle

setDirection(90,0)
setDirection(90,1)
setDirection(90,2)
setDirection(90,3)

# for direction in range(0, 181, 1):
#     setDirection(direction,0)
# direction = 0
# for direction in range(0, 181, 10):
#     setDirection(direction,1)
# direction = 0
# for direction in range(0, 181, 10):
#     setDirection(direction,2)
# direction = 0
# setDirection(0,0)
# setDirection(0,1)
# setDirection(0,2)
print "done"
