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
alias v="vim"
alias z="zathura"

# scripts
alias cfgb="$HOME/.scripts/config-backup.sh"
alias sgd="$HOME/.scripts/share-googledrive.sh"
alias cpdf="$HOME/.scripts/convert-to-pdf.sh"
alias gitup="$HOME/.scripts/git-update-config.sh"
alias ce="$HOME/.scripts/config-edit.sh"
alias vf="$HOME/.scripts/vim-file.sh"
alias svf="$HOME/.scripts/sudo-vim-file.sh"

alias update="sudo apt update && sudo apt upgrade -y && sudo apt full-upgrade -y && sudo apt autoremove -y"

#se () { du -a ~/* ~/.config/* | awk '{print $2}' | fzf | xargs -r $EDITOR ;}

#alias mpdf="parallel -I% pandoc %.md --pdf-engine=xelatex -o %.pdf ::: "
