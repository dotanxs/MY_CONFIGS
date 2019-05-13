#!/bin/bash

# script copies various config files to git-src folder.

cp -v $HOME/.config/i3/config $HOME/git-src/MY_CONFIGS/i3/i3config
cp -v $HOME/.bashrc $HOME/git-src/MY_CONFIGS/.bashrc
cp -v $HOME/.profile $HOME/git-src/MY_CONFIGS/.bash_profile
cp -v $HOME/.bash_aliases  $HOME/git-src/MY_CONFIGS/.bash_aliases
cp -v $HOME/.config/i3/i3blocks.conf $HOME/git-src/MY_CONFIGS/i3/i3blocks.conf
cp -v $HOME/.config/rofi/config $HOME/git-src/MY_CONFIGS/rofi/rofi.conf
cp -v $HOME/.Xresources $HOME/git-src/MY_CONFIGS/.Xresources
cp -v $HOME/.xinitrc $HOME/git-src/MY_CONFIGS/.xinitrc
cp -v $HOME/.vimrc $HOME/git-src/MY_CONFIGS/vim/.vimrc
cp -v $HOME/g/st/config.h $HOME/git-src/MY_CONFIGS/st/st-config.h
cp -v $HOME/g/st/st.c $HOME/git-src/MY_CONFIGS/st/st.c
cp -v $HOME/g/st/st.h $HOME/git-src/MY_CONFIGS/st/st.h
cp -v $HOME/g/st/x.c $HOME/git-src/MY_CONFIGS/st/x.c
cp -v $HOME/.scripts/* $HOME/git-src/MY_CONFIGS/.scripts/
