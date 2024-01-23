# zshrc

# starship
eval "$(starship init zsh)"

# git shell aliases 
alias ga="git add"
alias gc="git commit"
alias gcp="git checkout"
alias gp="git push"
alias gs="git status"

function work() {
    shifts=0
    while true
    do 
        ((shifts++))
        notify-send "Arise! Fight for the glorious future." "shift: $shifts"
        echo "shift: $shifts"
        sleep 25m
        notify-send "Workers! Put down your tools."
        sleep 5m
    done
}

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/moz/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

export GIT_EDITOR=vim
