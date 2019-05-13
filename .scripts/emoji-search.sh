#!/bin/bash

# searching and copying emojis

cat $HOME/.scripts/emojis.txt | awk -F ";" '{print $2,$4}' | dmenu -i -p 'Search emojis' | awk '{print $1}' | xclip -selection clipboard
