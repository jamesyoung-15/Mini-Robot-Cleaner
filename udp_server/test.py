import keyboard

def on_triggered():
	print("Triggered!")
keyboard.add_hotkey('x', on_triggered, trigger_on_release=True)

print("Press ESC to stop.")
keyboard.wait('esc')