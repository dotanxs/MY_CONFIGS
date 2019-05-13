#!/bin/bash

# script copies markdown files to a GDrive shared location.

cp -v $HOME/docs/markdown/commands.md $HOME/docs/gdrive-share/
cp -v $HOME/docs/markdown/cisco-commands.md $HOME/docs/gdrive-share/
cp -v $HOME/docs/markdown/journal.md $HOME/docs/gdrive-share/

cp -vr $HOME/docs/markdown/img $HOME/docs/gdrive-share/

cp -v $HOME/docs/pdf/commands.pdf $HOME/docs/gdrive-share/
cp -v $HOME/docs/pdf/cisco-commands.pdf $HOME/docs/gdrive-share/
cp -v $HOME/docs/pdf/journal.pdf $HOME/docs/gdrive-share/
