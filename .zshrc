# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

source ~/.shellrc
source ~/.profile

function mkcd() {
	mkdir $@
	cd $@
}

autoload -U compinit colors vcs_info
colors
compinit

REPORTTIME=3

HISTFILE=~/.zhistory
HISTSIZE=5000
SAVEHIST=5000
setopt INC_APPEND_HISTORY
setopt EXTENDED_HISTORY
setopt HIST_IGNORE_ALL_DUPS
setopt CORRECT_ALL
zstyle ':completion:*' completer _complete _correct _approximate

bindkey '^[[1;5C' forward-word
bindkey '^[[1;5D' backward-word

bindkey "^[[3~" delete-char
bindkey "^[3;5~" delete-char
bindkey "\e[3~" delete-char
