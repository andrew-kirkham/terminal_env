#!/bin/bash

#make the extra file
touch ~/.bashrc_extra
cp -a ../configs/bash/. ~/

#if on macos, add source bashrc to profile so that it is sourced on every terminal open
os=$(uname -s)
if [ "$os" = "Darwin" ]; then
    echo 'source ~/.bashrc' >> ~/.profile
fi

