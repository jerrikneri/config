cfgd() {
  if [ -z "$1" ]
  then
    cd $DOTFILES_CONFIG/$1
  else
    cd $DOTFILES_CONFIG
  fi
}