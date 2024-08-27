ln -sf $DOTFILES_CONFIG/zsh/.zshenv $HOME/.zshenv

ln -sf $DOTFILES_CONFIG/alacritty $HOME/.config
ln -sf $DOTFILES_CONFIG/karabiner $HOME/.config
ln -sf $DOTFILES_CONFIG/newsboat $HOME/.config
ln -sf $DOTFILES_CONFIG/nvim $HOME/.config
ln -sf $DOTFILES_CONFIG/sketchybar $HOME/.config
ln -sf $DOTFILES_CONFIG/tmux $HOME/.config
ln -sf $DOTFILES_CONFIG/skhd $HOME/.config
ln -sf $DOTFILES_CONFIG/yabai $HOME/.config
ln -sf $DOTFILES_CONFIG/zsh/.zshrc $HOME/.config/zsh/.zshrc

rm -rf "$XDG_CONFIG_HOME/zsh/external"
ln -sf "$DOTFILES_CONFIG/zsh/external" "$ZDOTDIR"

echo 'MacOS set up complete!'