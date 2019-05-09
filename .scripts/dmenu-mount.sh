#!/bin/sh

# original script created by Luke Smith

pgrep -x dmenu && exit
exclusionregex="\(/dev/sda1\|/dev/sda3\|/dev/sda5\)$"

mountable=$(lsblk -pr | grep "part $" | grep -v "sda" | awk '{print $1, "(" $4 ")"}')
[[ "$mountable" = "" ]] && exit
chosen=$(echo "$mountable" | dmenu -i -p "Mount?" | awk '{print $1}')
[[ "$chosen" = "" ]] && exit
sudo mount "$chosen" && exit
dirs=$(find /mnt /media /mount /home -type d -maxdepth 3 2>/dev/null)
mountpoint=$(echo "$dirs" | dmenu -i -p "Type in mount point.")
[[ "$mountpoint" = "" ]] && exit
if [[ ! -d "$mountpoint" ]]; then
	mkdiryn=$(echo -e "No\nYes" | dmenu -i -p "$mountpoint does not exist. Create it?")
	[[ "$mkdiryn" = Yes ]] && sudo mkdir -p "$mountpoint"
fi
sudo mount $chosen $mountpoint && notify-send "$chosen mounted to $mountpoint."
