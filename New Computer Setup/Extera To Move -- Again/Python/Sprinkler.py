#!/bin/python3

import RPi.GPIO as GPIO
from time import sleep
from multiprocessing import Queue
from multiprocessing import Process
from datetime import datetime
from datetime import timedelta
from subprocess import call

#### Set GPIO mode and starting states
GPIO.setmode(GPIO.BOARD)
#### OUTPUT Pins
GPIO.setup(18, GPIO.OUT)
GPIO.output(18, False)
GPIO.setup(19, GPIO.OUT)
GPIO.output(19, False)
GPIO.setup(20, GPIO.OUT)
GPIO.output(20, False)
#### Input Pins
#        # Define Name
sprinkies_start = 21
emergency_stop = 22
  ## --- Eventualy use 3 buttons/switches to select zones --- ##
# front_yard = 23
# side_yard = 24
# back_yard = 25
#        # Pull_Up_Down
GPIO.setup(sprinkies_start, GPIO.IN, pull_up_down=GPIO.PUD_DOWN)
GPIO.setup(emergency_stop, GPIO.IN, pull_up_down=GPIO.PUD_DOWN)
# GPIO.setup(front_yard, GPIO.IN, pull_up_down=GPIO.PUD_DOWN)
# GPIO.setup(side_yard, GPIO.IN, pull_up_down=GPIO.PUD_DOWN)
# GPIO.setup(back_yard, GPIO.IN, pull_up_down=GPIO.PUD_DOWN)
#        # Add Event Detection (threaded waiting)
GPIO.add_event_detect(sprinkies_start, GPIO.BOTH, callback=start_full_run, bouncetime=800)
GPIO.add_event_detect(emergency_stop, GPIO.BOTH, callback=stop_it_now, bouncetime=800)

#### 30 MIN all zones run
def start_full_run ():
    print('starting sprinklers for full run') 
    GPIO.output(18, True)
    print('Front yead sprinklers on') 
    time.sleep(1800)
    GPIO.output(18, False)
    print('Front Yard done') 
    GPIO.output(19, True)
    print('Side yead sprinklers on') 
    time.sleep(1800)
    GPIO.output(19, False)
    print('Side Yard done') 
    GPIO.output(20, True)
    print('Back yead sprinklers on')
    time.sleep(1800)
    GPIO.output(20, False)
    print('Back Yard done') 
    return

def stop_it_now():
    exit 

# while True:
    # print("Blink or No??")
    # n = input()
    # while n == 'yes':
    #     GPIO.output(18, True)
    #     #print("On")
    #     time.sleep(0.5)
    #     GPIO.output(18, False)
    #     #print("off")
    #     time.sleep(0.5)
    #     input()



