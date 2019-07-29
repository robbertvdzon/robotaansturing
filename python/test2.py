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
    print "duty =", duty
    #time.sleep(0.003) # allow to settle

print "starting"
setup()





# Create an ADS1115 ADC (16-bit) instance.
adc = Adafruit_ADS1x15.ADS1115()

# Or create an ADS1015 ADC (12-bit) instance.
#adc = Adafruit_ADS1x15.ADS1015()

# Note you can change the I2C address from its default (0x48), and/or the I2C
# bus by passing in these optional parameters:
#adc = Adafruit_ADS1x15.ADS1015(address=0x49, busnum=1)

# Choose a gain of 1 for reading voltages from 0 to 4.09V.
# Or pick a different gain to change the range of voltages that are read:
#  - 2/3 = +/-6.144V
#  -   1 = +/-4.096V
#  -   2 = +/-2.048V
#  -   4 = +/-1.024V
#  -   8 = +/-0.512V
#  -  16 = +/-0.256V
# See table 3 in the ADS1015/ADS1115 datasheet for more info on gain.
GAIN = 1

print('Reading ADS1x15 values, press Ctrl-C to quit...')

# Main loop.
while True:
    # Read all the ADC channel values in a list.

    duty0 = adc.read_adc(0, gain=GAIN)  / 3276
    duty1 = adc.read_adc(1, gain=GAIN)  / 3276
    duty2 = adc.read_adc(2, gain=GAIN)  / 3276
    duty3 = adc.read_adc(3, gain=GAIN)  / 3276

    #print("bus0:%1.3f  " %(value0))
    #print("bus1:%1.3f  " %(value1))
    #print("bus2:%1.3f  " %(value2))
    #print("bus3:%1.3f  " %(value3))


    setDirection(duty0,0)
    #setDirection(value1,1)
    #setDirection(value2,2)
    #setDirection(value3,3)
