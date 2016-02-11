#!/bin/bash
#
#Fetches updates for all git repositories located in a specified location
#This will not work if your repository has spaces

function update() {
    dirs=$(find $GIT_DIRECTORY -mindepth 1 -maxdepth 1 -type d)
    for d in $dirs; do
        echo "Fetching $d"
        cd $d
        git fetch -q --all > /dev/null 2>&1
        cd ..
    done
}

source ~/.bashrc_extra
if [ -z "$GIT_DIRECTORY" ]; then
    GIT_DIRECTORY=~/Documents/Repos/
fi

update
