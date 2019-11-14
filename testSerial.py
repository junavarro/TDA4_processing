import serial
import time
ser = serial.Serial('/dev/ttyS0',timeout=0,parity=serial.PARITY_EVEN, rtscts=1)  # open serial port
print(ser.name)         # check which port was really used

for i in range(50):
    ser.write("x")     # write a string
    time.sleep(1)
    print("x\n")

ser.close()             # close port