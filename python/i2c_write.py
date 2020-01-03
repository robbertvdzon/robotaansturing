import smbus
import time
import sys

bus = smbus.SMBus(1)

address = int(sys.argv[1])
data = sys.argv[2]

print("sending "+data+" to address "+str(address))

data_list = list(data)
for i in data_list:
    bus.write_byte(address, int(ord(i)))
    time.sleep(.01)

