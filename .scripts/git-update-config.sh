#!/bin/sh

# copy configs and git commit

sh $HOME/.scripts/config-backup.sh
cd $HOME/git-src/MY_CONFIGS/
git add .
git commit -am 'xx'
cd -
