# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples
export PROMPT_COMMAND=__setprompt

function __setprompt () {
    local PREVRET=$?
    if [ $PREVRET -eq '0' ]; then
        STATUS="$BOLD_GREEN[+]"
    else
        STATUS="$BOLD_RED[-]"
    fi
    if [[ $USER = "chronos" ]]; then
        TIME_COLOR=$BOLD_PURPLE
        USER_DIR_COLOR=$BOLD_WHITE
    elif [[ $EUID -ne 0 ]]; then 
        TIME_COLOR=$BOLD_CYAN
        USER_DIR_COLOR=$BOLD_GREEN
    else
        TIME_COLOR=$BOLD_YELLOW
        USER_DIR_COLOR=$BOLD_RED
    fi
    if [[ -n $VIRTUAL_ENV ]]; then
        V_ENV="${BOLD_PURPLE}[$(basename ${VIRTUAL_ENV})]"
    else
        V_ENV=""
    fi
   
    DIRECTORY=${USER_DIR_COLOR}"[\u: \w]"
    TIME=${TIME_COLOR}"[\T]"

    #show the git branch, dirty status
    include ~/.bash_git
    GIT_BRANCH=${BOLD_WHITE}$GIT_PROMPT${NO_COLOR} 
    
    #new line before each command
    PS1="\n"
    PS1=${PS1}"┌"${STATUS}${V_ENV}${TIME}${DIRECTORY}${GIT_BRANCH}"\n"
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

LS_COLORS=$LS_COLORS:'di=0;35:' ; export LS_COLORS

export LANG="en_US.UTF-8"
export LANGUAGE="en_US.UTF-8"

include /etc/bash_completion
include ~/.bash_aliases
include ~/.bashrc_extra
include ~/.bash_colors
__setprompt

