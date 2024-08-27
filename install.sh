#!/bin/bash

# Source base environment variables for establishing directorie
source .config/zsh/.zshenv

# Set .zshenv in ~
cp .config/zsh/.zshenv $HOME

# Check if .env does not exist
if [ ! -f .env ]; then
    # Copy .env.example to .env
    cp .env.example .env
    echo ".env file created from .env.example"
else
    echo ".env file already exists"
fi

# Environment Variables
source $DOTFILES/.env

# defined in .config/zsh/.zshenv
for dir in $ALIASES $FUNCTIONS $MODULES; do
    for file in "$dir"/.*.sh; do
        [ -f "$file" ] && source "$file"
    done
done

./detect-os.sh