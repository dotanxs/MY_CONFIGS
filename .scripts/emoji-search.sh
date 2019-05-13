#!/bin/sh

# searching and copying emojis

cat $HOME/.scripts/emojis.txt | awk -F "'" '{print $4,$6}' | dmenu -i -p 'Search emojis' | awk '{print $1}' | xclip -selection clipboard
