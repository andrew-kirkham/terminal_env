#!/bin/bash

cp .bash* ~/.
cp .X* ~/.
source ~/.bashrc
xrdb -merge ~/.Xresources
cd
