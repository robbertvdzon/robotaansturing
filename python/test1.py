# 4 laag :  5.296 6.349 5.941 3.384
# 4 hoog :  5.288 6.765 6.291 3.009

# 3 laag : 6.429 5.096 5.445 3.239
# 3 hoog : 7.088 5.104 5.936 2.273

# 2 laag : 7.304 4.386 5.169 3.332
# 2 hoog : 7.792 4.547 5.460 2.677

# 1 laag : 7.810 4.350 2.846 5.104
# 1 hoog : 7.846 5.120 2.846 4.375


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

def moveTo(duty0, duty1, duty2, duty3 ):
    setDirection(duty0,0)
    setDirection(duty1,1)
    setDirection(duty2,2)
    setDirection(duty3,3)

print "starting"
setup()

# Main loop.
moveTo (5.288,6.765,6.291,3.009) # 4 hoog
time.sleep( 5 )
moveTo (5.296 ,6.349 ,5.941, 3.384) # 4 laag
time.sleep( 5 )
moveTo (5.288,6.765,6.291,3.009) # 4 hoog

# 4 laag :  5.296 6.349 5.941 3.384
# 4 hoog :  5.288 6.765 6.291 3.009

# 3 laag : 6.429 5.096 5.445 3.239
# 3 hoog : 7.088 5.104 5.936 2.273

# 2 laag : 7.304 4.386 5.169 3.332
# 2 hoog : 7.792 4.547 5.460 2.677

# 1 laag : 7.810 4.350 2.846 5.104
# 1 hoog : 7.846 5.120 2.846 4.375
