# bash_env
This contains all the configuration files for a unix operating system.

# File descriptions
.bash_aliases - common command aliases for the bash shell
.bash_colors - variables for some PS1/LS colors since they are cryptic
.bash_git - enables a git repo indicator when the current directory is a git repo
.bashrc - the main file that sources other files and configures other items
.gitconfig - config and alias for git
.vimrc - config and plugins for vim
.Xresources - config for xTerm, does nothing if not using xTerm

# Usage
The setup_scripts directory contains scripts for easy usage and updating of configs
firstSetup.bash - copies every config over to the appropriate directory. clones necessary repos
updateLocalConfig.bash - updates all local configs with those in this git repo
updateRepoConfig.bash - updates the git repo configs with the local configs. performs a git add (but no commit/push)
install.bash - WIP to auto apt-get any packages needed
updateAllRepos.bash - a script that will update every git repo in a directory 
