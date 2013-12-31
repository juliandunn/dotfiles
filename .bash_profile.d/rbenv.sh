export PATH=$HOME/.rbenv/bin:$PATH

# replace the stuff that would normally come from "rbenv init -" because the
# completions path is wrong.

export PATH="/Users/juliandunn/.rbenv/shims:$PATH"
source "/opt/local/etc/bash_completion.d/rbenv"
rbenv rehash 2>/dev/null
rbenv() {
  command="$1"
  if [ "$#" -gt 0 ]; then
    shift
  fi

  case "$command" in
  shell)
    eval `rbenv "sh-$command" "$@"`;;
  *)
    command rbenv "$command" "$@";;
  esac
}
