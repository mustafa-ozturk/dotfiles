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
    echo $(date +%I:%M%p) "| Work session started."
    while true
    do 
        ((shifts++))
        date=$(date +%I:%M%p)
        notify-send "$date | Shift: $shifts" "Workers! Today you forge your tomorrow!" \
            -t 60000 -u "critical"
        aplay recordings/start.wav -q 
        sleep 25m
        echo "$date | Shift: $shifts completed."
        notify-send "$date | Shift: $shifts" "Shift ends. Workers! Enjoy your well earned rest." \
            -t 60000 -u "critical"
        aplay recordings/end.wav -q
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
