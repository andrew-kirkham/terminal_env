# terminal_env
This contains all the configuration files for a unix|osx operating system.

# Environments Supported
Currently bash and fish have config files

## Requirements
### OSX
* Homebrew
### Linux
* sudo rights OR git, curl

## Usage
`firstSetup.sh <bash|fish>`

### Other usages
The setup_scripts directory contains scripts for easy usage and updating of configs

* updateLocalConfig.sh - updates all local configs with those in this git repo - for updates after first setup
* install.sh - apt-get any packages needed by setup scripts
* updateAllRepos.sh - a script that will update every git repo in a directory

# Config explanations

## Common configs (not shell specific)
* .gitconfig - config and alias for git
* .vimrc - config and plugins for vim
* .Xresources - config for xTerm, does nothing if not using xTerm

## Bash
### Files
* .bash_aliases - common command aliases for the bash shell
* .bash_colors - variables for some PS1/LS colors since they are cryptic
* .bash_git - enables a git repo indicator when the current directory is a git repo
* .bashrc - the main file that sources other files and configures other items

## Fish
### Fish files
* install_fish.sh - installs fonts required by theme, oh my fish, and bobthefish theme
* config.fish - configuration and theme options
* functions/* - fish aliases/functions


# Future Work
* Figure out where to put vscode settings
* Add more dev settings

