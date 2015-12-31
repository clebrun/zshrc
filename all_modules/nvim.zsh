if which nvim > /dev/null; then
  alias -g ni='nvim'
  
  # Open these extensions with nvim
  NVIM_EXTS=(rb css js html txt)
  for ext in $NVIM_EXTS; do
    alias -s $ext=nvim
  done
fi
