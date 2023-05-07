import time
import os
from socket import *
from PyQt5.QtWidgets import *
from PyQt5.QtGui import *
from PyQt5.QtCore import *
from enum import Enum
import sys

class Direction(Enum):
    Left = 0
    Right = 1
    Up = 2
    Down = 3
    Stop = 4
    UpRight = 5
    UpLeft = 6
    DownRight = 7
    DownLeft = 8

class Joystick(QWidget):
    def __init__(self, parent=None):
        super(Joystick, self).__init__(parent)
        self.setMinimumSize(900, 900)
        self.movingOffset = QPointF(0, 0)
        self.grabCenter = False
        self.__maxDistance = 50

    def paintEvent(self, event):
        painter = QPainter(self)
        bounds = QRectF(-self.__maxDistance, -self.__maxDistance, self.__maxDistance * 2, self.__maxDistance * 2).translated(self._center())
        painter.setBrush(QColor('#11111b'))
        painter.drawEllipse(bounds)
        painter.setBrush(QColor('#74c7ec'))
        painter.drawEllipse(self._centerEllipse())

    def _centerEllipse(self):
        if self.grabCenter:
            return QRectF(-20, -20, 40, 40).translated(self.movingOffset)
        return QRectF(-20, -20, 40, 40).translated(self._center())

    def _center(self):
        return QPointF(self.width()/2, self.height()/2)


    def _boundJoystick(self, point):
        limitLine = QLineF(self._center(), point)
        if (limitLine.length() > self.__maxDistance):
            limitLine.setLength(self.__maxDistance)
        return limitLine.p2()

    def joystickDirection(self):
        if not self.grabCenter:
            return 0
        normVector = QLineF(self._center(), self.movingOffset)
        currentDistance = normVector.length()
        angle = normVector.angle()

        distance = min(currentDistance / self.__maxDistance, 1.0)
        if distance>0.3:
            if 35 <= angle < 55:
                return (Direction.UpRight, distance)
            elif 55 <= angle < 125:
                return (Direction.Up, distance)
            elif 125 <= angle < 145:
                return (Direction.UpLeft, distance)
            elif 145 <= angle < 215:
                return (Direction.Left, distance)
            elif 215 <= angle < 235:
                return (Direction.DownLeft, distance)
            elif 235 <= angle < 305:
                return (Direction.Down, distance)
            elif 305 <= angle < 325:
                return (Direction.DownRight, distance)
            return (Direction.Right, distance)
        else:
            return (Direction.Stop,distance)


    def mousePressEvent(self, ev):
        self.grabCenter = self._centerEllipse().contains(ev.pos())
        return super().mousePressEvent(ev)

    def mouseReleaseEvent(self, event):
        self.grabCenter = False
        self.movingOffset = QPointF(0, 0)
        stop()
        self.update()

    def mouseMoveEvent(self, event):
        if self.grabCenter:
            # print("Moving")
            self.movingOffset = self._boundJoystick(event.pos())
            self.update()
            direction, speed = self.joystickDirection()
            # print(speed)
            if direction == Direction.Up:
                # print("Forward")
                moveForward()
            elif direction == Direction.Left:
                # print("Left")
                moveLeft()
            elif direction == Direction.Right:
                # print("Right")
                moveRight()
            elif direction == Direction.Down:
                moveBackward()
            elif direction == Direction.Stop:
                stop()
            elif direction == Direction.UpLeft:
                moveForwardLeft()
            elif direction == Direction.UpRight:
                moveForwardRight()
            elif direction == Direction.DownLeft:
                moveBackwardLeft()
            elif direction == Direction.DownRight:
                moveBackwardRight()

    def keyPressEvent(self, event):
        self.test_method()
    
    def test_method(self):
        print('Space key pressed')



# set hostname (can be string of IP address or hostname of server) and port
serverName = input('Input hostname: ')
serverPort = int(input('Input port number: '))

buffer_size = 2048 # buffer size 2048 as input works for most purposes

# create client's socket
clientSocket = socket(AF_INET, SOCK_DGRAM) #af_inet indicates ipv4, sockdram indicates udp


# send string param message via UDP
def send(message):
    # send message through socket to destination host
    clientSocket.sendto(message.encode(),(serverName, serverPort))
    

def receive():
    # when packet arrives at client's socket, packet's data is put into modifiedMessage and packet's source is put to serverAddress
    receivedMessage, serverAddress = clientSocket.recvfrom(buffer_size)
    print(receivedMessage.decode())


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

def stop():
    print("Stop")
    send("sp-")
    time.sleep(delay)

def moveForwardRight():
    print("Forward Right")
    send("FR-")
    time.sleep(delay)

def moveForwardLeft():
    print("Forward Left")
    send("FL-")
    time.sleep(delay)

def moveBackwardRight():
    print("Backward Right")
    send("BR-")
    time.sleep(delay)

def moveBackwardLeft():
    print("Backward Left")
    send("BL-")
    time.sleep(delay)

# delay so that it's sending data to frequently
delay = 0.1

# UDP button actions
def changeMode():
    print("Change mode")
    send("/C-")
    time.sleep(delay)
    send("sp-")
    time.sleep(delay)

def getData():
    print("Get data")
    send("/G-")
    time.sleep(delay)

def stopCleaner():
    print("Stop cleaner")
    send("SC-")

def startCleaner():
    print("Start Cleaner")
    send("GC-")




if __name__ == '__main__':
    # Create main application window
    app = QApplication(sys.argv)
    mw = QMainWindow()
    mw.setStyleSheet("background-color: #1e1e2e")
    mw.setWindowTitle('Robot Control Interface')

    # Create and set widget layout
    # Main widget container
    cw = QWidget()
    ml = QGridLayout()
    cw.setLayout(ml)
    mw.setCentralWidget(cw)

    # buttons
    button1 = QPushButton()
    button1.setText("Get Robot Data")
    button2 = QPushButton()
    button2.setText("Change Robot Mode")
    button1.clicked.connect(getData)
    button2.clicked.connect(changeMode)
    button1.setStyleSheet('background-color: #313244; color: white;')
    button2.setStyleSheet('background-color: #313244; color:white')
    
    button3 = QPushButton()
    button3.setText("Start Cleaner")
    button4 = QPushButton()
    button4.setText("Stop Cleaner")
    # button5.setText("Change Speed to Fast")
    button3.clicked.connect(startCleaner)
    button4.clicked.connect(stopCleaner)
    button3.setStyleSheet('background-color: #313244; color: white;')
    button4.setStyleSheet('background-color: #313244; color:white')

    button_layout = QGridLayout()

    # Create joystick 
    joystick = Joystick()
    ml.addWidget(joystick,0,0)
    button_layout.addWidget(button1,1,0,alignment=Qt.AlignmentFlag.AlignCenter)
    button_layout.addWidget(button2,1,1,alignment=Qt.AlignmentFlag.AlignCenter)
    button_layout.addWidget(button3,2,0,alignment=Qt.AlignmentFlag.AlignCenter)
    button_layout.addWidget(button4,2,1,alignment=Qt.AlignmentFlag.AlignCenter)
    ml.addLayout(button_layout,1,0)
    mw.show()

    QApplication.instance().exec_()
