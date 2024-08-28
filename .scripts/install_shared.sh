########
# zsh #
#######

mkdir -p "$XDG_CONFIG_HOME/zsh"

ln -sf "$DOTFILES_CONFIG/zsh/.zshrc" "$ZDOTDIR/.zshrc"

rm -rf "$XDG_CONFIG_HOME/zsh/external"
ln -sf "$DOTFILES_CONFIG/zsh/external" "$ZDOTDIR"
