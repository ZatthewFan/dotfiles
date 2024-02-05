#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='eza'
alias ll='eza -alh'
alias la='eza -a'
alias tree='eza --tree'
alias grep='grep --color=auto'
alias cat='bat'
PS1='[\u@\h \W]\$ '
alias python=python3
alias refresh='source ~/.bashrc'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# go setup
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
