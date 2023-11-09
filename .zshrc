# zshrc

# starship
eval "$(starship init zsh)"

# git shell aliases 
alias ga="git add"
alias gc="git commit"
alias gcp="git checkout"
alias gp="git push"
alias gs="git status"

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
