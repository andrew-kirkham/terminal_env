#!/bin/bash

#copy over the config files to the user directory
cd ..
cp -a configs/. ~/
cp -a vim_plugins/. ~/.vim/plugins/

#source the bashrc to reload bash stuff
source ~/.bashrc

#merge the resources file for xterm
xrdb -merge ~/.Xresources

cd
