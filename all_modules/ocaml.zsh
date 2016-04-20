# OPAM configuration
. /Users/cooperlebrun/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true
alias save-utop="cat ~/.utop-history >> ~/Projects/OCaml/history.log"

# Bad idea?
# auto save utop history with above command after finished with session.
alias -g utop-exp="utop ; save-utop"
