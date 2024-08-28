cfgd() {
  if [ -z "$1" ]; then
    cd $DOTFILES_CONFIG
  else
    cd $DOTFILES_CONFIG/$1
  fi
}

