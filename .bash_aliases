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

#se () { du -a ~/* ~/.config/* | awk '{print $2}' | fzf | xargs -r $EDITOR ;}
se () { du -a ~/* | awk '{print $2}' | fzf | parallel -X --tty -r $EDITOR ;}
vf () { du -a --max-depth=1 | awk '{print $2}' | fzf | parallel -X --tty -r $EDITOR ;}
svf () { du -a --max-depth=1 | awk '{print $2}' | fzf | parallel -X --tty -r sudo $EDITOR ;}
cfgb () { cp $HOME/.config/i3/config $HOME/git-src/MY_CONFIGS/i3/i3config \
       && cp $HOME/.bashrc $HOME/git-src/MY_CONFIGS/.bashrc \
      && cp $HOME/.profile $HOME/git-src/MY_CONFIGS/.bash_profile \
      && cp $HOME/.bash_aliases  $HOME/git-src/MY_CONFIGS/.bash_aliases \
      && cp $HOME/.config/i3/i3blocks.conf $HOME/git-src/MY_CONFIGS/i3/i3blocks.conf \
      && cp $HOME/.config/rofi/config $HOME/git-src/MY_CONFIGS/rofi/rofi.conf \
      && cp $HOME/.Xresources $HOME/git-src/MY_CONFIGS/.Xresources \
      && cp $HOME/g/st/config.h $HOME/git-src/MY_CONFIGS/st/st-config.h \
      && cp $HOME/g/st/st.c $HOME/git-src/MY_CONFIGS/st/st.c \
      && cp $HOME/g/st/st.h $HOME/git-src/MY_CONFIGS/st/st.h \
      && cp $HOME/g/st/x.c $HOME/git-src/MY_CONFIGS/st/x.c \
      && cp $HOME/.vimrc $HOME/git-src/MY_CONFIGS/vim/.vimrc ;}
#alias mpdf="parallel -I% pandoc %.md --pdf-engine=xelatex -o %.pdf ::: "
mp () { fzf | cut -d '.' -f 1 | \
	parallel -X --tty -I% -r pandoc %.md --pdf-engine=xelatex -o $() %.pdf ;}
tp () { fzf | cut -d '.' -f 1 | \
	parallel -X --tty -I% -r pandoc %.tex --pdf-engine=xelatex -o $() %.pdf ;}
