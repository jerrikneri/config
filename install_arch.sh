#!/bin/bash

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

# clean existing
rm $XDG_CONFIG_HOME/zsh/.zshrc

ln -sf "$DOTFILES_CONFIG/zsh/.zshrc" "$XDG_CONFIG_HOME/zsh"
ln -sf "$DOTFILES_CONFIG/zsh/aliases" "$XDG_CONFIG_HOME/zsh/aliases"

rm -rf "$XDG_CONFIG_HOME/zsh/external"
ln -sf "$DOTFILES_CONFIG/zsh/external" "$XDG_CONFIG_HOME/zsh"
