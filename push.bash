#!/bin/bash

cp ~/.bashrc .
cp ~/.bash_aliases .
git add *
git commit -m 'auto updating .bash*'

