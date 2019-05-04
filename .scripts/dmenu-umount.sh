#!/bin/sh

# original script created by Luke Smith

exclusionregex="\(/boot\|/home\|/\)$"
drives=$(lsblk -lp | grep "t /" | grep -v "$exclusionregex" | awk '{print $1, "(" $4 ")", "on", $7}')
[[ "$drives" = "" ]] && exit
chosen=$(echo "$drives" | dmenu -i -p "Unmount which drive?" | awk '{print $1}')
[[ "$chosen" = "" ]] && exit
sudo umount $chosen && notify-send "$chosen unmounted."
