### ALIASES
alias dir="dir --color=auto"
alias vdir="vdir --color=auto"
alias grep="grep --color=auto"
alias fgrep="fgrep --color=auto"
alias egrep="egrep --color=auto"

alias p="pushd"
alias pp="popd"
alias pd="dirs -v"
alias la="ls -la --color --group-directories-first"
alias ls="ls -l --color --group-directories-first"
alias scrots="scrot -s -e 'mv $f ~/screens/'"

alias ytd="youtube-dl --add-metadata -ic" # download video
alias ytad="youtube-dl --add-metadata -xic" # download audio
alias mkd="mkdir -pv"
alias m="mupdf"
alias r="ranger"
alias t="todo.sh"
alias reboot="systemctl reboot"
alias shutdown="systemctl shutdown"

alias cfgb="$HOME/.scripts/cfgb.sh"
alias sgd="$HOME/.scripts/sgd.sh"

#se () { du -a ~/* ~/.config/* | awk '{print $2}' | fzf | xargs -r $EDITOR ;}
ce () { du -a ~/.config* | awk '{print $2}' | fzf | parallel -X --tty -r $EDITOR ;}
vf () { du -a --max-depth=1 | awk '{print $2}' | fzf | parallel -X --tty -r $EDITOR ;}
svf () { du -a --max-depth=1 | awk '{print $2}' | fzf | parallel -X --tty -r sudo $EDITOR ;}

#alias mpdf="parallel -I% pandoc %.md --pdf-engine=xelatex -o %.pdf ::: "
mp () { fzf | cut -d '.' -f 1 | \
	parallel -X --tty -I% -r pandoc %.md --pdf-engine=xelatex -o $() %.pdf ;}
tp () { fzf | cut -d '.' -f 1 | \
	parallel -X --tty -I% -r pandoc %.tex --pdf-engine=xelatex -o $() %.pdf ;}
