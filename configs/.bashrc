# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples
export PROMPT_COMMAND=__setprompt
GREEN="\[\033[32;1m\]"
CYAN="\[\033[36;1m\]"
NO_COLOR="\[\033[0m\]"
RED="\[\033[31;1m\]"
YELLOW="\[\033[33;1m\]"
PURPLE="\[\033[35;1m\]"
WHITE="\[\033[37;1m\]"
LIGHTGRAY="\[\033[0;37m\]"
BLUE="\[\033[34;1m\]"
function __setprompt () {
	local PREVRET=$?
	if [ $PREVRET -eq '0' ]; then
		STATUS="$GREEN[+]"
	else
		STATUS="$RED[-]"
	fi
	if [[ $USER = "chronos" ]]; then
		USER1=$PURPLE
		USER2=$WHITE
	elif [[ $EUID -ne 0 ]]; then 
    		USER1=$CYAN
		USER2=$GREEN
	else
		USER1=$YELLOW
		USER2=$RED
	fi
	ANGLEDOWN="${LIGHTGRAY}\342\224\214"
	ANGLEUP="${LIGHTGRAY}\342\224\224"
	HYPHEN="\342\224\200"
	#new line before each command
	PS1="\n"
	#set up the first line with colors
	PS1=${PS1}${ANGLEDOWN}${STATUS}${USER1}"[\T]"${USER2}"[\u: \w]"
	#new line to type the commands
	PS1=${PS1}"\n"
	#set up the second line
	PS1=${PS1}${ANGLEUP}${HYPHEN}"> ${NO_COLOR}"
}
__setprompt
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

#source all the aliases
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi
# enable programmable completion features
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi

# source any extra items that are not specific to all computers
if [ -f ~/.bashrc_extra ]; then
    . ~/.bashrc_extra
fi

