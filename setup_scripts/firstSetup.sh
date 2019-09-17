#!/bin/sh

# only install if on linux. OSX probably includes basics already
os=$(uname -s)
if [ "$os" = "Linux" ]; then
    ./install.sh
fi

#make vim directories and put plugins in
mkdir ~/.vim
mkdir ~/.vim/plugins
mkdir ~/.vim/bundle
git clone https://github.com/VundleVim/Vundle.vim ~/.vim/bundle/Vundle.vim

./updateLocalConfig.sh
./updateCodeSettings.sh

if [ "$1" = "fish" ]; then
    echo "Installing fish"
    ./fish/install_fish.sh
elif [ "$1" = "bash" ]; then
    echo "Installing bash"
    ./bash/install_bash.sh
else
    echo "No environment specified, only setting up config files"
fi

echo "Remember to set the locale to UTF-8!"
