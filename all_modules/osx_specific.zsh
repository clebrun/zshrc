if [[ "$OSTYPE" == "darwin"* ]]; then
  which htop > /dev/null && alias -g htop='sudo htop'
  # macvim
  which mvim > /dev/null && alias -g vim='mvim -v'
  # postgres start
  if which psql > /dev/null; then
    alias postgres-start='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start'
  fi
  which brew > /dev/null && alias buu='brew update && brew upgrade'
  alias -g wh="say -v whisper"
fi
