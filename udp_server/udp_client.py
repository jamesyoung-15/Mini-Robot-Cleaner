# Simple socket programming with UDP python version

import keyboard
import time
import os
from socket import *

# set hostname (can be string of IP address or hostname of server) and port
serverName = input('Input hostname: ')
serverPort = int(input('Input port number: '))

buffer_size = 2048 # buffer size 2048 as input works for most purposes

# create client's socket
clientSocket = socket(AF_INET, SOCK_DGRAM) #af_inet indicates ipv4, sockdram indicates udp

delay = 0.3

# send string param message via UDP
def send(message):
    # send message through socket to destination host
    clientSocket.sendto(message.encode(),(serverName, serverPort))
    # when packet arrives at client's socket, packet's data is put into modifiedMessage and packet's source is put to serverAddress
    # modifiedMessage, serverAddress = clientSocket.recvfrom(buffer_size)
    # print(modifiedMessage.decode())


# move car functions by sending udp transmission
def close():
    clientSocket.close()

def moveRight():
    print("Right")
    send("/R-")
    time.sleep(delay)

def moveLeft():
    print("Left")
    send("/L-")
    time.sleep(delay)

def moveForward():
    print("Forward")
    send("/F-")
    time.sleep(delay)

def moveBackward():
    print("Backward")
    send("/B-")
    time.sleep(delay)

def stop(e):
    print("Stop")
    send("sp-")
    time.sleep(delay)

def moveForwardRight():
    send("FR-")
    time.sleep(delay)

def moveForwardLeft():
    send("FL-")
    time.sleep(delay)

def moveBackwardRight():
    send("BR-")
    time.sleep(delay)

def moveBackwardLeft():
    send("BL--")
    time.sleep(delay)

# turn off echo
os.system("stty -echo")

# keyboard input
keyboard.add_hotkey('w', moveForward)
keyboard.add_hotkey('a', moveLeft)
keyboard.add_hotkey('s', moveBackward)
keyboard.add_hotkey('d', moveRight)
keyboard.add_hotkey('k', stop)
keyboard.add_hotkey('w+d', moveForwardRight)
keyboard.add_hotkey('w+a', moveForwardLeft)
keyboard.add_hotkey('s+d', moveBackwardRight)
keyboard.add_hotkey('s+a', moveBackwardLeft)

# on release stop
keyboard.on_release(stop)

# menu
print("Press WASD controls for robot")
print("Press ESC to stop.")
keyboard.wait('esc')

# turn on echo again, for unix systems
os.system("stty echo")

