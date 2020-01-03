import smbus
import sys

bus = smbus.SMBus(1)
address = int(sys.argv[1])
state = bus.read_byte_data(address, 1)
print(state)


