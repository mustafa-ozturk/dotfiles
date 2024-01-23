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
    echo $(date +%I:%M%p) " | Workers! Today, you forge your tomorrow!"
    while true
    do 
        ((shifts++))
        date=$(date +%I:%M%p)
        notify-send "$date | shift: $shifts" "Arise! Fight for the glorious future." \
            -t 60000 -u "critical"
        sleep 25m
        echo "$date | shift: $shifts"
        notify-send "$date | shift: $shifts" "Workers! Put down your tools." \
            -t 60000 -u "critical"
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
