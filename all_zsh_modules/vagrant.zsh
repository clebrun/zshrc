if which vagrant > /dev/null; then
  alias v='vagrant'
  alias vup='vagrant box update && vagrant up && vagrant ssh'
fi
