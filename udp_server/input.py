import keyboard
import time

def moveRight():
    print("/R-")
    time.sleep(0.4)

def moveLeft():
    print("/L-")
    time.sleep(0.4)

def moveForward():
    print("/F-")
    time.sleep(0.4)

def moveBackward():
    print("/B-")
    time.sleep(0.4)

def stop():
    print("sp-")
    time.sleep(0.4)

def moveForwardRight():
    print("FR-")
    time.sleep(0.4)

def moveForwardLeft():
    print("FL-")
    time.sleep(0.4)

def moveBackwardRight():
    print("BR-")
    time.sleep(0.4)

def moveBackwardLeft():
    print("BL--")
    time.sleep(0.4)

keyboard.add_hotkey('w', moveForward)
keyboard.add_hotkey('a', moveLeft)
keyboard.add_hotkey('s', moveBackward)
keyboard.add_hotkey('d', moveRight)
keyboard.add_hotkey('k', stop)

# keyboard.add_hotkey('a', stop,trigger_on_release=True)
keyboard.add_hotkey('w+d', moveForwardRight)
keyboard.add_hotkey('w+a', moveForwardLeft)
keyboard.add_hotkey('s+d', moveBackwardRight)
keyboard.add_hotkey('s+a', moveBackwardLeft)


print("Press ESC to stop.")
keyboard.wait('esc')