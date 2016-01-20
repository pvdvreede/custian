#! /bin/zsh

ZSH=$HOME/.oh-my-zsh
#ZSH_CUSTOM=$HOME/.zsh-custom
ZSH_THEME="ys"
plugins=(git git-extras) # docker fasd zsh-completions zsh-syntax-highlighting zsh-autosuggestions)

# Auto completion setup
#AUTOSUGGESTION_ACCEPT_RIGHT_ARROW=1
#AUTOSUGGESTION_HIGHLIGHT_COLOR='fg-13'
#
export TERM='xterm-256color'
export EDITOR=vim

source $ZSH/oh-my-zsh.sh
# Enable autosuggestions automatically.

#ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor)
#zle-line-init() {
#    zle autosuggest-start
#}
#zle -N zle-line-init

#autoload -U compinit && compinit

# override listing alias
alias ll="ls -lah"
# tmux aliases/functions
alias tn='tmux new-session -A -s '
alias tna='tmux new-session -A -s $(basename $PWD | tr . -)'
alias tl='tmux ls'
alias fig="docker-compose"

# paths
export PATH=/usr/local/bin:$PATH

# load custom envs
if [ -f $HOME/.custom_env ]; then
  source $HOME/.custom_env
fi

