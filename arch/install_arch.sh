#!/bin/bash

########
# nvim #
########
mkdir -p "$HOME/.config/nvim"
mkdir -p "$HOME/.config/nvim/undo"

ln -sf "$HOME/dotfiles/nvim/init.nvim" "$HOME/.config/nvim"
# -s symbolic otherwise it will create a hard link
# -f force creation of link, remove existing if any

# Link entire directory -f not needed as we wipe existing, and can't be used on directories
rm -rf "$HOME/.config/X11"
ln -s "$HOME/dotfiles/X11" "$HOME/.config"


#######
# zsh #
#######

mkdir -p "$HOME/.config/zsh"
ln -sf "$HOME/dotfiles/zsh/.zshenv" "$HOME"
ln -sf "$HOME/dotfiles/zsh/.zshrc" "$HOME/.config/zsh"
ln -sf "$HOME/dotfiles/zsh/aliases" "$HOME/.config/zsh/aliases"

rm -rf "$HOME/.config/zsh/external"
ln -sf "$HOME/dotfiles/zsh/external" "$HOME/.config/zsh"
