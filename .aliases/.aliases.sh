#Bash
alias la="ls -al"

# CLI Tools
alias k="kubectl"
alias nv="nvim"
alias t="tmux"
alias start-services="yabai --start-service && skhd --start-service"

#Docker
alias docker-format="docker ps --format $FORMAT"

#Sourcing
alias refrash="cfg && zsrc && cd -"
alias zsrc="source $ZDOTDIR/.zshrc"
alias vsrc="cp ~/Config/.vimrc ~/.vimrc"
alias zfg="vim $ZDOTDIR/.zshrc"

#Supervisor
alias supervisor-path="~/code/supervisor/supervisord.conf"
alias svd="supervisord -c /usr/local/etc/supervisor.d/supervisord.conf"
alias svc="supervisorctl -c /usr/local/etc/supervisor.d/supervisord.conf"

#Stress Test
alias stress="yes > /dev/null & yes > /dev/null & yes > /dev/null & yes > /dev/null &"
alias stop="killall yes"
