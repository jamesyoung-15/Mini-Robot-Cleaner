import keyboard
import time
import os
from socket import *
from PyQt5.QtWidgets import *
from PyQt5.QtGui import *
from PyQt5.QtCore import *
from enum import Enum

class Direction(Enum):
    Left = 0
    Right = 1
    Up = 2
    Down = 3
    Stop = 4

class Joystick(QWidget):
    def __init__(self, parent=None):
        super(Joystick, self).__init__(parent)
        self.setMinimumSize(640, 480)
        self.movingOffset = QPointF(0, 0)
        self.grabCenter = False
        self.__maxDistance = 50

    def paintEvent(self, event):
        painter = QPainter(self)
        bounds = QRectF(-self.__maxDistance, -self.__maxDistance, self.__maxDistance * 2, self.__maxDistance * 2).translated(self._center())
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
            if 45 <= angle < 135:
                return (Direction.Up, distance)
            elif 135 <= angle < 225:
                return (Direction.Left, distance)
            elif 225 <= angle < 315:
                return (Direction.Down, distance)
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

# def speedFast():
# 	print("Change speed to fast")
# 	send("GF")

# def speedMed():
# 	print("Change speed to medium")
# 	send("GM")

# def speedSlow():
# 	print("Change speed to slow")
# 	send("GS")

# def moveForwardRight():
#     send("FR-")
#     time.sleep(delay)

# def moveForwardLeft():
#     send("FL-")
#     time.sleep(delay)

# def moveBackwardRight():
#     send("BR-")
#     time.sleep(delay)

# def moveBackwardLeft():
#     send("BL-")
#     time.sleep(delay)

# delay so that it's sending data to frequently
delay = 0.1




if __name__ == '__main__':
    # Create main application window
    app = QApplication([])
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
    
    # button3 = QPushButton()
    # button3.setText("Change Speed to Slow")
    # button4 = QPushButton()
    # button4.setText("Change Speed to Medium")
    # button5 = QPushButton()
    # button5.setText("Change Speed to Fast")
    # button3.clicked.connect(speedSlow)
    # button4.clicked.connect(speedMed)
    # button5.clicked.connect(speedFast)


    # Create joystick 
    joystick = Joystick()
    ml.addWidget(joystick,0,0)
    ml.addWidget(button1,1,0,alignment=Qt.AlignmentFlag.AlignCenter)
    ml.addWidget(button2,2,0,alignment=Qt.AlignmentFlag.AlignCenter)
    # ml.addWidget(button3,3,0,alignment=Qt.AlignmentFlag.AlignLeft)
    # ml.addWidget(button4,3,0,alignment=Qt.AlignmentFlag.AlignCenter)
    # ml.addWidget(button5,3,0,alignment=Qt.AlignmentFlag.AlignRight)
    mw.show()

    QApplication.instance().exec_()
