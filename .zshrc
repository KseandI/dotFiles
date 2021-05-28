# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

source ~/.shellrc
source ~/.profile

#plugings
	#zsh-history-substring-search
	source ~/.zsh-plug/zsh-history-substring-search.zsh
	HISTORY_SUBSTRING_SEARCH_HIGHLIGHT_FOUND=0
	HISTORY_SUBSTRING_SEARCH_HIGHLIGHT_NOT_FOUND=0

function mkcd() {
	mkdir $@
	cd $@
}

autoload -U compinit colors vcs_info
colors
compinit

HISTFILE=~/.zhistory
HISTSIZE=5000
SAVEHIST=5000
setopt INC_APPEND_HISTORY
setopt EXTENDED_HISTORY
setopt HIST_IGNORE_ALL_DUPS
zstyle ':completion:*' completer _complete _correct _approximate

bindkey '^[[1;5C' forward-word
bindkey '^[[1;5D' backward-word

bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

bindkey "^[[3~" delete-char
bindkey "^H" backward-kill-word 

export PROMPT="%n [%d](%?)> "
export RPROMPT=''
