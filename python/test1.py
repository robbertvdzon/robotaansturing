import time
from smbus import SMBus
from PCA9685 import PWM

fPWM = 50
i2c_address = 0x40 # (standard) adapt to your module
channel = 0 # adapt to your wiring
a = 8.5 # adapt to your servo
b = 2  # adapt to your servo

current0 =6.393
current1 =5.908
current2 =5.985
current3 =2.514

def setup():
    global pwm
    bus = SMBus(1) # Raspberry Pi revision 2
    pwm = PWM(bus, i2c_address)
    pwm.setFreq(fPWM)

def setDirection(duty, ch):
    pwm.setDuty(ch, duty)

def moveTo(duty0, duty1, duty2, duty3 ):
    global current0
    global current1
    global current2
    global current3
    diff0 = duty0-current0
    diff1 = duty1-current1
    diff2 = duty2-current2
    diff3 = duty3-current3
    steps = 150
    step0 = diff0/steps
    step1 = diff1/steps
    step2 = diff2/steps
    step3 = diff3/steps
    for x in range(steps):
        current0 = current0 + step0
        current1 = current1 + step1
        current2 = current2 + step2
        current3 = current3 + step3
        setDirection(current0,0)
        setDirection(current1,1)
        setDirection(current2,2)
        setDirection(current3,3)
    time.sleep( 1 )

print "starting"
setup()

moveTo (6.393 ,5.908 ,5.985, 2.514) # 4 hoog
moveTo (6.008 ,5.792 ,5.996 ,3.625) # 4 laag
moveTo (6.393 ,5.908 ,5.985,2.514) # 4 hoog

moveTo (7.088,5.104,5.936,2.273) # 3 hoog
moveTo (6.429, 5.096, 5.445, 3.239) # 3 laag
moveTo (7.088,5.104,5.936,2.273) # 3 hoog

moveTo (7.792, 4.547, 5.460, 2.677) # 2 hoog
moveTo (7.304 ,4.386 ,5.169 ,3.332) # 2 laag
moveTo (7.792, 4.547, 5.460, 2.677) # 2 hoog

moveTo (7.846, 5.120 ,2.846, 4.375) # 1 hoog
moveTo (7.810, 4.350 ,2.846 ,5.104) # 1 laag
moveTo (7.846, 5.120 ,2.846, 4.375) # 1 hoog

moveTo (6.393 ,5.908 ,5.985, 2.514) # 4 hoog
