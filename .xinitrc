#!/bin/sh

# /etc/X11/xinit/xinitrc
#
# global xinitrc file, used by all X sessions started by xinit (startx)
userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/usr/X11R6/lib/X11/xinit/.Xresources
sysmodmap=/usr/X11R6/lib/X11/xinit/.Xmodmap

# merge in defaults and keymaps

if [ -f $sysresources ]; then
    xrdb -merge $sysresources
fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f $userresources ]; then
    xrdb -merge $userresources
fi

if [ -f $usermodmap ]; then
    xmodmap $usermodmap
fi
# invoke global X session script
#. /etc/X11/Xsession
#feh --bg-center ~/Pictures/wallpapers/city-rain.jpg
feh --bg-fill ~/Pictures/wallpapers/by_upload2_2560.jpg
#feh --bg-fill ~/Pictures/wallpapers/city-rain.jpg
#feh --bg-center ~/Downloads/img/ouroboros_of_life_and_death_by_labornthyn.jpg
#feh --bg-scale ~/Downloads/img/yog_sothoth_by_ioanz-dcb4ozv.jpg
exec keynav &
exec i3
#exec dwm
#while true; do 
#	read -n 1 -p "PleSE select which one to run, i3wm or dwm? " id;
#	case $id in 
#		[Ii]* ) exec i3; break;;
#		[Dd]* ) exec dwm; break;;
#		* ) echo "Please select i3wm or dwm. ";;
#	esac;
#done
