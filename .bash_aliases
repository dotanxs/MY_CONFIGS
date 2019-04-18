export EDITOR="/usr/bin/vim"

### ALIASY
alias dirs="dirs -v"
alias la="ls -la --color"
alias ls="ls -l --color"
alias scrots="scrot -s -e 'mv $f ~/screens/'"
se () { du -a ~/* ~/.config/* | awk '{print $2}' | fzf | parallel -X --tty -r $EDITOR ;}

