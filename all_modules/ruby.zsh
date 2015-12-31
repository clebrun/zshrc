path=($HOME/.rbenv/bin $path)

# rbenv
which rbenv > /dev/null && eval "$(rbenv init -)"
alias rh='rbenv rehash'

# bundle
if which bundle > /dev/null; then
  alias be='bundle exec'
fi

# rails
which rails > /dev/null && alias r='rails'
