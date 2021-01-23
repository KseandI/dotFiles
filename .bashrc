#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='exa --color=auto'
alias dofl='/usr/bin/git --git-dir=/home/igor/.dotfiles/ --work-tree=/home/igor'
alias sobs='source ~/.bashrc'
alias v='vim'
alias n='nvim'
alias rmf='rm -rf'
alias s='systemctl'

eval "$(fasd --init auto)"

export PS1="\u[\w]>\[$(tput sgr0)\] "
