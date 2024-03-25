#### Useful commands 
```bash

# will go to the end and continually load the latest contents of the file.
# i.e. used to monitor tail of file as it grows. 
less +F filename

# run command initially `+` and go to bottom of page `G`
less +G filename
```


#### Shell aliases

```bash
# editor setup
#export EDITOR="kak" # kakoune; https://kakoune.org/
export EDITOR="vim"

## GENERAL ##
alias dush="du -sh" # helpful disk usage read




## GIT ##
alias gbr="git branch"
alias gad="git add"
alias gco="git checkout"
alias gci="git commit -m"
alias gst="git status"
alias push="git push"
alias pull="git pull"
alias gpu="git push"
alias gpl="git pull"


## CONFIG ##
alias zrc="$EDITOR ~/.zshrc"

```

#### Fixes 
```bash
# `conda` not recognised in zsh
source /opt/anaconda3/bin/activate
```


### Migration 

```bash
# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# install conda
wget https://repo.anaconda.com/archive/Anaconda3-2024.02-1-Linux-x86_64.sh

# run install script...
# TODO

# add to path
source /path/to/anaconda3/bin/activate
# if installed for all users: source /opt/anaconda3/bin/activate

conda init zsh

# for bash: conda init

# check working
conda list

# 
```
