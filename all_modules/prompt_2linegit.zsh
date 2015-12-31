# git branch in prompt. No idea what any of this is
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' \
	    'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
zstyle ':vcs_info:*' actionformats \
      '%F{5}%F{5}[%F{2}%b%F{3}|%F{1}%a%F{5}]%f '
zstyle ':vcs_info:*' formats       \
      '%F{5}[%F{2}%b%F{5}]%f '
zstyle ':vcs_info:(sv[nk]|bzr):*' branchformat '%b%F{1}:%F{3}%r'
zstyle ':vcs_info:*' enable git
vcs_info_wrapper() {
  vcs_info
  if [ -n "$vcs_info_msg_0_" ]; then
    echo "%{$fg[grey]%}${vcs_info_msg_0_}%{$reset_color%}$del"
  fi
}

PS1="[%3c] 
#%(1j.%j.=)>%{$reset_color%} "
# current git branch
RPROMPT=$'$(vcs_info_wrapper)'
