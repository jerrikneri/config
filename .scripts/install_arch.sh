#!/bin/bash

echo 'Starting Arch Linux install script...'

# Clean up existing config
rm -f $HOME/.zshenv
rm -f $ZDOTDIR/.zshrc

ln -s "$DOTFILES_CONFIG/zsh/.zshenv" "$HOME/.zshenv"

########
# nvim #
########
mkdir -p "$XDG_CONFIG_HOME/nvim"
mkdir -p "$XDG_CONFIG_HOME/nvim/undo"

ln -sf "$DOTFILES_CONFIG/nvim/init.nvim" "$XDG_CONFIG_HOME/nvim"
# -s symbolic otherwise it will create a hard link
# -f force creation of link, remove existing if any

# Link entire directory -f not needed as we wipe existing, and can't be used on directories
rm -rf "$XDG_CONFIG_HOME/X11"
ln -s "$DOTFILES_CONFIG/X11" "$XDG_CONFIG_HOME"


#######
# zsh #
#######

mkdir -p "$XDG_CONFIG_HOME/zsh"

ln -sf "$DOTFILES_CONFIG/zsh/.zshrc" "$ZDOTDIR/.zshrc"

rm -rf "$XDG_CONFIG_HOME/zsh/external"
ln -sf "$DOTFILES_CONFIG/zsh/external" "$ZDOTDIR"

echo 'Arch Linux set up complete!'