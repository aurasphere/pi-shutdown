pi-shutdown
===========

Shutdown/reboot(/power on) Raspberry Pi with a push button (supports both a normally closed or a normally open one).

## Usage:
 1. Connect the button to GPIO pin 5 and 6.
 2. Clone this repo.
 3. Run ```sudo sh pi-shutdown-install.sh```

When the button is pressed for less than 3 seconds, Pi reboots. If pressed for more than 3 seconds it shuts down.
While shut down, if button is connected to GPIO pin 5 and 6, then pressing the button powers on Pi (this functionality is native, not provided by this script).

The timing along with wheter the button used is normally open or closed can be configured inside the script.
