#!/bin/bash

#copy over the config files to the user directory
cp .bash* ~/.
cp .X* ~/.
cp .gitconfig ~/.
cp .vimrc ~/.

#source the bashrc to reload bash stuff
source ~/.bashrc

#merge the resources file for xterm
xrdb -merge ~/.Xresources

cd
