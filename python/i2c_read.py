import smbus

bus = smbus.SMBus(1)
address_2 = 0x05
state = bus.read_byte_data(address_2, 1)
print(state)


