#!/bin/bash

# Source base environment variables for establishing directories
source .config/zsh/.zshenv

# Clean up existing config
rm $HOME/.zshenv
rm $ZDOTDIR/.zshrc

# Set .zshenv in ~
#cp .config/zsh/.zshenv $HOME

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

# defined in .config/zsh/.zshenv
for dir in $ALIASES $FUNCTIONS $MODULES; do
    for file in "$dir"/.*.sh; do
        [ -f "$file" ] && source "$file" && echo "source $file from $dir"
    done
done

# run install_arch.sh | install_macOS.sh | install_ubuntu.sh
./detect-os.sh

