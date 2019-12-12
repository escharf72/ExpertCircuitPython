import time  #pylint: disable-msg=import-error
import analogio #pylint: disable-msg=import-error
import board #pylint: disable-msg=import-error
import busio #pylint: disable-msg=import-error
from simpleio import map_range #pylint: disable-msg=import-error

 #Making it pin A1
potentiometer = analogio.AnalogIn(board.A1)
uart = busio.UART(board.TX, board.RX, baudrate=9600)
 # Making a function (get_voltage) that will tell us the voltage number between 0-3.3
def get_voltage(pin):
    return (pin.value * 3.3) / 65536
 
 #print the value that we read with the function get_voltage
while True:
    print((get_voltage(potentiometer),))
    time.sleep(0.1)

    myPotValue = get_voltage(potentiometer)
    newVal= map_range(myPotValue, 0,3.3,0,255)
    arr = bytes([int(newVal)])
    print(arr)
    uart.write(arr)
    time.sleep(0.1)                          