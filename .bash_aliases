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

#se () { du -a ~/* ~/.config/* | awk '{print $2}' | fzf | xargs -r $EDITOR ;}
ce () { du -a ~/.config* | awk '{print $2}' | fzf | parallel -X --tty -r $EDITOR ;}
vf () { du -a --max-depth=1 | awk '{print $2}' | fzf | parallel -X --tty -r $EDITOR ;}
svf () { du -a --max-depth=1 | awk '{print $2}' | fzf | parallel -X --tty -r sudo $EDITOR ;}
sgd () { cp -v $HOME/docs/commands.md $HOME/docs/gdrive-share/ \
	&& cp -v $HOME/docs/cisco-commands.md $HOME/docs/gdrive-share/ \
	&& cp -v $HOME/docs/journal.md $HOME/docs/gdrive-share/ ;}
cfgb () { cp -v $HOME/.config/i3/config $HOME/git-src/MY_CONFIGS/i3/i3config \
       && cp -v $HOME/.bashrc $HOME/git-src/MY_CONFIGS/.bashrc \
      && cp -v $HOME/.profile $HOME/git-src/MY_CONFIGS/.bash_profile \
      && cp -v $HOME/.bash_aliases  $HOME/git-src/MY_CONFIGS/.bash_aliases \
      && cp -v $HOME/.config/i3/i3blocks.conf $HOME/git-src/MY_CONFIGS/i3/i3blocks.conf \
      && cp -v $HOME/.config/rofi/config $HOME/git-src/MY_CONFIGS/rofi/rofi.conf \
      && cp -v $HOME/.Xresources $HOME/git-src/MY_CONFIGS/.Xresources \
      && cp -v $HOME/g/st/config.h $HOME/git-src/MY_CONFIGS/st/st-config.h \
      && cp -v $HOME/g/st/st.c $HOME/git-src/MY_CONFIGS/st/st.c \
      && cp -v $HOME/g/st/st.h $HOME/git-src/MY_CONFIGS/st/st.h \
      && cp -v $HOME/g/st/x.c $HOME/git-src/MY_CONFIGS/st/x.c \
      && cp -v $HOME/.vimrc $HOME/git-src/MY_CONFIGS/vim/.vimrc ;}
#alias mpdf="parallel -I% pandoc %.md --pdf-engine=xelatex -o %.pdf ::: "
mp () { fzf | cut -d '.' -f 1 | \
	parallel -X --tty -I% -r pandoc %.md --pdf-engine=xelatex -o $() %.pdf ;}
tp () { fzf | cut -d '.' -f 1 | \
	parallel -X --tty -I% -r pandoc %.tex --pdf-engine=xelatex -o $() %.pdf ;}
