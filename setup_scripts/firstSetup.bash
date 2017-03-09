#!/bin/bash

#make vim directories and put plugins in
mkdir ~/.vim
mkdir ~/.vim/plugins
mkdir ~/.vim/bundle
git clone https://github.com/VundleVim/Vundle.vim ~/.vim/bundle/Vundle.vim

#if on macos, add source bashrc to profile so that it is sourced on every terminal open
os=$(uname -s)
if [[ os -eq "Darwin" ]]; then
    echo 'source ~/.bashrc' >> ~/.profile
fi

#make the extra file
touch ~/.bashrc_extra

bash updateLocalConfig.bash

sudo bash install.bash

echo "Remember to set the locale to UTF-8!"
