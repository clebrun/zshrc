autoload -Uz colors && colors
autoload -Uz vcs_info
HISTFILE=~/.zsh-history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory autocd extendedglob prompt_subst
unsetopt beep nomatch notify

# Case insensitive completion
autoload -Uz compinit
compinit -C

# Automagical array that exports elements to path.
path=($HOME/bin /usr/local/sbin $path)

alias resrc='source ~/.zshrc'
#alias ls='ls -F --color --group-directories-first'
alias la='ls -a'
alias lc='ls --color'
alias ftyps="ls -F **/*.* | cut -d '.' -f 2- | sed 's/.\+\.//' | sed 's/\*$//' | sed 's/.*\/$//' | sed 's/.*:$//' | grep -v '^$'"

bindkey '^R' history-incremental-search-backward

which tree > /dev/null && alias -g t ='tree'

#if which trayer > /dev/null; then
#  # reopen trayer
#  alias retray='trayer --edge top --align right --SetDockType true --SetPartialStrut true --expand true --width 4 --transparent true --tint 0x191970 --height 13 &'
#fi

# load config files.
for file in $HOME/.zsh_used_modules/*; do
  source $file
done
