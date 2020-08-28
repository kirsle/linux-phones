#!/bin/bash

# crust firmware on the Pinephone can put the phone into deep sleep until the
# power button is pressed, saving tons of battery life.
#
# At time of writing (8/27/2020) it's not fully integrated with Phosh, so
# this script run as root can create a "deep sleep" shortcut icon.
#
# Setup: edit your sudoers file to allow your user to sudo run this script
# without a password. Then put the .desktop into ~/.local/share/applications
# and this script on your $PATH.

if [[ "$UID" != "0" ]]; then
	echo Run this script as root to put crust firmware into deep sleep mode.
	exit 1
fi

echo mem > /sys/power/state
