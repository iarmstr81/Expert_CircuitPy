import time
import board
from analogio import AnalogIn
import busio
import simpleio
 
potentiometer = AnalogIn(board.A1)  
 
uart = busio.UART(board.TX, board.RX, baudrate=9600)

while True:
    myPotValue = simpleio.map_range(potentiometer.value, 0, 65000, 0, 180)
    print((myPotValue,))    
    uart.write(bytes([int(myPotValue)]))  
    time.sleep(0.1)