#RPi Pinouts

#I2C Pins
#GPIO2 -> SDA
#GPIO3 -> SCL

# schrijf data weg
# schrijf iets met X en lees daarna een char
# maak protocol
# maak rest api

#Import the Library Requreid
import smbus
import time
import sys

# for RPI version 1, use "bus = smbus.SMBus(0)"
bus = smbus.SMBus(1)

# This is the address we setup in the Arduino Program
#Slave Address 1
address = 0x04

#Slave Address 2
address_2 = 0x05

def writeNumber(value):
    #bus.write_byte(address, value)
    bus.write_byte(address_2, value)
    # bus.write_byte_data(address, 0, value)
    return -1

def readNumber():
    # number = bus.read_byte(address)
    number = bus.read_byte_data(address_2, 1)
    return number



print(sys.argv[0])
data = raw_input("Enter the data to be sent : ")
data_list = sys.argv[0]
for i in data_list:
  #Sends to the Slaves
    writeNumber(int(ord(i)))
    #time.sleep(.1)

#    print(readNumber())

#End of the Script

