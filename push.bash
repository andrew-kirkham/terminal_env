#!/bin/bash

cp ~/.bashrc .
cp ~/.bash_aliases .
git add .bash*
git add pu*
git commit -m 'auto updating .bash*'

