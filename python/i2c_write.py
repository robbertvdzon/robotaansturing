import smbus
import time
import sys

bus = smbus.SMBus(1)



address_2 = sys.argv[1]
data = sys.argv[2]

print(address_2)
print(data)

data_list = list(sys.argv[1])
for i in data_list:
    bus.write_byte(address_2, int(ord(i)))
    time.sleep(.01)

