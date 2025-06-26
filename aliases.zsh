# editor setup
#export EDITOR="kak" # kakoune; https://kakoune.org/
export EDITOR="vim"

## GENERAL ##
alias dush="du -sh" # helpful disk usage read
alias grepc="grep --color=always"  # allow for piping `grep` output to `less` with colours visible

alias wcl="wc -l"
alias wcb="wc -b"
alias ldr="ls -d */"
alias lf="ls -l | grep -v '^d'"

alias nv="nvidia-smi"


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
