alias aliases='vim ~/.bash_aliases'
alias reload='source ~/.bashrc'

alias cdu='cd ..'
alias cduu='cd ../..'
alias cdgit='cd ~/Documents/git'

alias ls='ls --color=auto'
alias ll='ls -alFh'
alias la='ls -Ah'
alias ldir='ls -d */'

alias update='apt-get update && apt-get upgrade'
alias s='sudo !!'

alias non-ascii='grep -Pn "[\x80-\xFF]"'
alias hgrep='history | grep'

alias newbg='~/Documents/git/linux_background/linux_background.sh'

alias weka='java -Xmx1000M -jar ~/Documents/ml/weka-3-6-12/weka.jar &'

%chrosh aliases
alias chroot='sudo enter-chroot -n precise'
alias chroot-update='sudo sh -e ~/Downloads/crouton -u -n precise'
alias start='sudo startxfce4'
