
echo 'Starting shared install script...'
########
# zsh #
#######

mkdir -p "$XDG_CONFIG_HOME/zsh"

ln -sf "$DOTFILES_CONFIG/zsh/.zshrc" "$ZDOTDIR/.zshrc"

rm -rf "$XDG_CONFIG_HOME/zsh/external"
ln -sf "$DOTFILES_CONFIG/zsh/external" "$ZDOTDIR"

########
# tmux #
########

if [ ! -d "$XDG_CONFIG_HOME/tmux" ]
  then
    mkdir "$XDG_CONFIG_HOME/tmux"
    git clone https://github.com/tmux-plugins/tpm "$XDG_CONFIG_HOME/tmux/plugins/tpm"
    #"$XDG_CONFIG_HOME/tmux/plugins/tpm/bin/install_plugins"
fi

ln -sf "$DOTFILES_CONFIG/tmux" "$XDG_CONFIG_HOME"

# Generate default tmux conf
# tmux -f /dev/null show-options -s \; show-options -g \; list-keys > "$DOTFILES/tmux/tmux.defaults.conf"

# if [ ! -d "$XDG_CONFIG_HOME/tmux/plugins/tpm" ]
# then
#     git clone https://github.com/tmux-plugins/tpm "$XDG_CONFIG_HOME/tmux/plugins/tpm"
# fi
