#!/bin/bash

cp ~/.bashrc .
cp ~/.bash_aliases .
cp ~/.Xresources .
cp ~/.vimrc .
cp ~/.gitconfig .

git commit -m 'auto updating configurations files*'

