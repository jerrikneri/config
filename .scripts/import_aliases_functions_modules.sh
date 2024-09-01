#!/bin/bash

source $DOTFILES/.env

echo 'Sourcing aliases, functions, and modules...'

# defined in .config/zsh/.zshenv
for dir in $ALIASES $FUNCTIONS $MODULES; do
  for file in "$dir"/.*.sh; do
    [ -f "$file" ] && source $file
  done
done
