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
    con=true
    echo $(date +%I:%M%p) "| Work session started."
    while $con; do
        ((shifts++))
        date=$(date +%I:%M%p)

        notify-send "$date | Shift: $shifts" "Workers! Today you forge your tomorrow!" \
            -t 60000 -u "critical"
        aplay recordings/start.wav -q 
        sleep 20m 


        date=$(date +%I:%M%p)
        notify-send "$date | Shift: $shifts | 5 minutes remaning. " "No Time to waste! We've got work to do." \
            -t 60000 
        aplay recordings/5remaining.wav -q 
        sleep 5m

        date=$(date +%I:%M%p)
        echo "$date | Shift: $shifts completed."
        notify-send "$date | Shift: $shifts" "Shift ends. Workers! Enjoy your well earned rest." \
            -t 60000 -u "critical"
        aplay recordings/end.wav -q
        sleep 5m

        echo -n "Ready for the next shift? (press any key): "
        read
    done
    exit 1
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
