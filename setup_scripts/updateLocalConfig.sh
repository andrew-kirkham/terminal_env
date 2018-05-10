#!/bin/sh

#copy over the config files to the user directory
cp -a ../vim_plugins/. ~/.vim/plugins/

#merge the resources file for xterm
xrdb -merge ~/.Xresources
