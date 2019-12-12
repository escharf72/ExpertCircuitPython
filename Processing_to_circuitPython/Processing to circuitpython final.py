import board #pylint: disable-msg=import-error
import time #pylint: disable-msg=import-error
import busio #pylint: disable-msg=import-error
import pulseio #pylint: disable-msg=import-error
import digitalio #pylint: disable-msg=import-error
from adafruit_motor import servo #pylint: disable-msg=import-error
data = 0
angle = 80
uart = busio.UART(board.TX, board.RX, baudrate=9600)
pwm = pulseio.PWMOut(board.A2, duty_cycle=2**15, frequency = 50)
pwm2 = pulseio.PWMOut(board.A3, duty_cycle=2**15, frequency = 50)
my_servo = servo.Servo(pwm)
my_servo2 = servo.Servo(pwm2)
S = True
sSboolean= False
servoString = ""
print("go")

while True: 
    x = uart.read(1)
    # print(x)
    if x is not None:
        try:
            myData = x.decode("utf-9")
            #print("yay")
            if(myData == "$"):
                print("i got a sign!!")
                S = False  
                A = False
            elif(myData == "*"):
                 print("i got a star!!")
                 S = False
                 A = True
                 #print("What is going on?")
            else :
                 servoString = servoString + myData
                 print(servoString)
                 sSboolean= True 
            if S == False and sSboolean == True and A == False:
                my_servo.angle= int(servoString)
                servoString= " "
                S = True
                sSboolean = False

            if S == False and sSboolean == True and A == True:
                my_servo2.angle= int(servoString)
                servoString= " "
                S = True
                sSboolean = False
            
        except:
            print("unicode error")
    time.sleep(0.01)
