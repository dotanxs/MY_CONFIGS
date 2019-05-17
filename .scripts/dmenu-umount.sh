#!/bin/sh

# original script created by Luke Smith

pgrep -x dmenu && exit

exclusionregex="\(/boot\|/home\|/\)$"
drives=$(lsblk -pr | grep "t /" | grep -v "sda" | awk '{print $1, "(" $4 ")", "on", $7}')
[ -z "$drives" ] && exit
chosen=$(echo "$drives" | dmenu -i -p "Unmount which drive?" | awk '{print $1}')
[ -z "$chosen" ] && exit
sudo umount $chosen && notify-send "$chosen unmounted."
