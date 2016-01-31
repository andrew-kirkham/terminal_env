# This file contains all of the general purpose aliases. If an alias
# is not specific to all devices, consider placing it in the sourced file
# named .bash_extras. 

# aliases for general use
alias aliases='vim ~/.bash_aliases'
alias funcs='alias && typeset -F'
alias reload='source ~/.bashrc'
alias e='exit'

#cd aliases
alias cdu='cd ..'
alias cduu='cd ../..'
alias cdgit='cd ~/Documents/git'

#ls aliases
alias l='ls'
alias ls='ls --color=auto'
alias ll='ls -alFh'
alias la='ls -Ah'
alias ldir='ls -d */'
alias lh='ls -a | egrep "^\."'

#sudo aliases
alias update='apt-get update && apt-get upgrade'
alias please='sudo $(history -p !!)'

#grep aliases
alias non-ascii='grep -Pn "[\x80-\xFF]"'
alias hgrep='history | grep'

#script aliases
alias newbg='~/Documents/git/linux_background/linux_background.sh'

#use this instead aliases
alias xterm='uxterm'
alias vi='vim'

#networking aliases
alias openports='netstat -tulnp'
alias myip='curl ifconfig.me/ip'

#function aliases
mkcd () {
   mkdir "$1"
   cd "$1"
}
