#!/bin/sh

# Original idea: Luke Smith

du -a --max-depth=1 | awk '{print $2}' | fzf | parallel -X --tty -r $EDITOR
