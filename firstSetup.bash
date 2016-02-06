#!/bin/bash

#copy over the config files to the user directory
cp .bash* ~/.
cp .X* ~/.
cp .gitconfig ~/.
cp .vimrc ~/.

#make vim directories and put plugins in
mkdir ~/.vim
mkdir ~/.vim/plugins

cp *.vim ~/.vim/plugins

#make the extra file
touch ~/.bashrc_extra

#source the bashrc to reload bash stuff
source ~/.bashrc

#merge the resources file for xterm
xrdb -merge ~/.Xresources

cd
