#!/bin/sh

# Original idea: Luke Smith

du -a ~/.config* | awk '{print $2}' | fzf | parallel -X --tty -r $EDITOR

