#!/bin/bash -x
#Install and configure a Fish terminal setup

this_dir=$(pwd)
root_dir=$(git rev-parse --show-toplevel)

os=$(uname -s)
if [ "$os" = "Darwin" ]; then
    brew install fish
elif [ "$os" = "Linux" ]; then
    #assuming linux. figure out which distro and grab accordingly
    flavor=$(cat /etc/issue)
    case "$flavor" in
        *Debian*)
            echo 'deb http://download.opensuse.org/repositories/shells:/fish:/release:/2/Debian_9.0/ /' > /etc/apt/sources.list.d/shells:fish:release:2.list
            apt-get update
            apt-get install fish
        ;;
        *Ubuntu*)
            apt-add-repository ppa:fish-shell/release-2
            apt-get update
            apt-get install fish
    esac
else
    echo "Unknown OS = $os. Please install fish manually"
fi


#play with fonts so that omf will behave
#install powerline fonts
cd /tmp/
git clone https://github.com/powerline/fonts.git
bash /tmp/fonts/install.sh
rm -r /tmp/fonts

#install nerd fonts
git clone --depth 1 https://github.com/ryanoasis/nerd-fonts
bash /tmp/nerd-fonts/install.sh Hack
rm -r /tmp/nerd-fonts

#install oh my fish (omf)
curl -L https://get.oh-my.fish | fish

#install bobthefish
omf install bobthefish

#cp config options to fish dir
cd $root_dir/configs/fish/
cp config.fish ~/.config/fish/
cp functions/* ~/.config/fish/functions

#set default shell to fish
chsh -s `which fish`

