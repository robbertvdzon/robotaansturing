import time
from smbus import SMBus
from PCA9685 import PWM
# Import the ADS1x15 module.
import Adafruit_ADS1x15

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
    pwm.setDuty(ch, duty)

print "starting"
setup()
adc = Adafruit_ADS1x15.ADS1115()
GAIN = 1

print('Reading ADS1x15 values, press Ctrl-C to quit...')

# Main loop.
while True:
    duty0 = adc.read_adc(0, gain=GAIN)  / float(3276)
    duty1 = adc.read_adc(1, gain=GAIN)  / float(3276)
    duty2 = adc.read_adc(2, gain=GAIN)  / float(3276)
    duty3 = adc.read_adc(3, gain=GAIN)  / float(3276)
    print(" %1.3f , %1.3f  ,%1.3f  ,%1.3f " %(duty0, duty1, duty2, duty3))
