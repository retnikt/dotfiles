import sys
import warnings

def hook():
	import atexit
	import os
	import readline

	histfile = os.path.join(os.path.expanduser("~"), ".local/share/python_history")
	try:
		readline.read_history_file(histfile)
	except OSError as e:
		warnings.warn("could not load history file", source=e)

	atexit.register(readline.write_history_file, histfile)


# replace existing history hook
sys.__interactivehook__ = hook
