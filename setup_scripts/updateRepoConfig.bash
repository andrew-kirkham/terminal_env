#!/bin/bash

#run the script in the root of the repo
cd ../bash

cp ~/.bashrc configs
cp ~/.bash_aliases configs
cp ~/.Xresources configs
cp ~/.vimrc configs
cp ~/.gitconfig configs

cp ~/.vim/plugin/* vim_plugins

git add *
git status
