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

se () { du -a ~/* ~/.config/* | awk '{print $2}' | fzf | parallel -X --tty -r $EDITOR ;}
#se () { du -a ~/* ~/.config/* | awk '{print $2}' | fzf | xargs -r $EDITOR ;}
vf () { fzf | parallel -X --tty -r $EDITOR ;}
cfgb () { cp $HOME/.config/i3/config $HOME/git-src/MY_CONFIGS/i3config \
       && cp $HOME/.bashrc $HOME/git-src/MY_CONFIGS/.bashrc \
      && cp $HOME/.profile $HOME/git-src/MY_CONFIGS/.bash_profile \
      && cp $HOME/.bash_aliases  $HOME/git-src/MY_CONFIGS/.bash_aliases \
      && cp $HOME/.config/i3/i3blocks.conf $HOME/git-src/MY_CONFIGS/i3blocks.conf \
      && cp $HOME/.config/rofi/config $HOME/git-src/MY_CONFIGS/rofi.conf \
      && cp $HOME/.Xresources $HOME/git-src/MY_CONFIGS/.Xresources \
      && cp $HOME/.vimrc $HOME/git-src/MY_CONFIGS/.vimrc ;}

