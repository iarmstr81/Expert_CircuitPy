import time
import board
from analogio import AnalogIn
 
potentiometer = AnalogIn(board.A1)  
 
while True:
 
    print((potentiometer.value,))      
    time.sleep(0.25)          