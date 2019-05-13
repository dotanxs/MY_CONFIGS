### ALIASES
alias dir="dir --color=auto"
alias vdir="vdir --color=auto"
alias grep="grep --color=auto"
alias fgrep="fgrep --color=auto"
alias egrep="egrep --color=auto"

alias la="ls -la --color --group-directories-first"
alias ls="ls -l --color --group-directories-first"
alias scrots="scrot -s -e 'mv $f ~/screens/'"

alias ytd="youtube-dl --add-metadata -ic" # download video
alias ytad="youtube-dl --add-metadata -xic" # download audio
alias mkd="mkdir -pv"

# power state
alias reboot="systemctl reboot"
alias shutdown="systemctl shutdown"

# dirs
alias p="pushd"
alias pp="popd"
alias pd="dirs -v"

# one-letter aliases
alias c="clear"
alias m="mupdf"
alias r="ranger"
alias t="todo.sh"
alias z="zathura"

# scripts
alias cfgb="$HOME/.scripts/config-backup.sh"
alias sgd="$HOME/.scripts/share-googledrive.sh"
alias cpdf="$HOME/.scripts/convert-to-pdf.sh"
alias gitup="$HOME/.scripts/git-update-config.sh"

alias update="sudo apt update && sudo apt upgrade -y && sudo apt full-upgrade -y && sudo apt autoremove -y"

#se () { du -a ~/* ~/.config/* | awk '{print $2}' | fzf | xargs -r $EDITOR ;}

ce () { du -a ~/.config* | awk '{print $2}' | fzf | parallel -X --tty -r $EDITOR ;}
vf () { du -a --max-depth=1 | awk '{print $2}' | fzf | parallel -X --tty -r $EDITOR ;}
svf () { du -a --max-depth=1 | awk '{print $2}' | fzf | parallel -X --tty -r sudo $EDITOR ;}

#alias mpdf="parallel -I% pandoc %.md --pdf-engine=xelatex -o %.pdf ::: "
