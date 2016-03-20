# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples
export PROMPT_COMMAND=__setprompt
include .bash_colors

function __setprompt () {
    local PREVRET=$?
    if [ $PREVRET -eq '0' ]; then
        STATUS="$GREEN[+]"
    else
        STATUS="$RED[-]"
    fi
    if [[ $USER = "chronos" ]]; then
        TIME_COLOR=$PURPLE
        USER_DIR_COLOR=$WHITE
    elif [[ $EUID -ne 0 ]]; then 
        TIME_COLOR=$CYAN
        USER_DIR_COLOR=$GREEN
    else
        TIME_COLOR=$YELLOW
        USER_DIR_COLOR=$RED
    fi
   
    DIRECTORY=${USER_DIR_COLOR}"[\u: \w]"
    TIME=${TIME_COLOR}"[\T]"

    #show the git branch, dirty status
    include ~/.bash_git
    GIT_BRANCH=${WHITE}$GIT_PROMPT${NO_COLOR} 
    
    #new line before each command
    PS1="\n"
    PS1=${PS1}"┌"${STATUS}${TIME}${DIRECTORY}${GIT_BRANCH}"\n"
    PS1=${PS1}"└─▷ "${NO_COLOR}
}

function include() {
    [[ -f "$1" ]] && source "$1"
}

# don't put duplicate lines or lines starting with space in the history.
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "$debian_chroot" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi


# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
fi

export LANG="en_US.UTF-8"
export LANGUAGE="en_US.UTF-8"

include /etc/bash_completion
include ~/.bash_aliases
include ~/.bashrc_extra
__setprompt

