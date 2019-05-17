#!/bin/sh

# original script created by Luke Smith

pgrep -x dmenu && exit

page=$( cat $HOME/.surf/bookmarks | dmenu -i -p "Website:" )
[ -z "$page" ] && exit
surf $page
