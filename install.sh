#!/bin/bash

# Source base environment variables for establishing directories
source .config/zsh/.zshenv

# Clean up existing config
cp $HOME/.zshenv $HOME/.zshenv.old
cp $ZDOTDIR/.zshrc $ZDOTDIR/.zshrc.old
rm -f $HOME/.zshenv
rm -f $ZDOTDIR/.zshrc

# Check if .env does not exist
if [ ! -f .env ]; then
  # Copy .env.example to .env
  cp .env.example .env
  echo ".env file created from .env.example"
else
  echo ".env file already exists"
fi

# Private Environment Variables
source $DOTFILES/.env

source $SCRIPTS/set_os.sh
# run install_arch.sh | install_macOS.sh | install_ubuntu.sh
$SCRIPTS/detect_os.sh

echo 'Install complete! Sourcing .zshrc'
