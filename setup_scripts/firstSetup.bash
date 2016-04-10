#!/bin/bash

#make vim directories and put plugins in
mkdir ~/.vim
mkdir ~/.vim/plugins
mkdir ~/.vim/bundle
git clone https://github.com/VundleVim/Vundle.vim ~/.vim/bundle/Vundle.vim

#make the extra file
touch ~/.bashrc_extra

bash updateLocalConfig.bash
