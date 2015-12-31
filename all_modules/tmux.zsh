which tmux > /dev/null && alias tm='tmux'

# fix irssi behaviour in screen and tmux
[ -n "$TMUX" ] && export TERM="screen-256color"
