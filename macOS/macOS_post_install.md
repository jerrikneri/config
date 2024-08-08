# M1 Mac

### Initial Setup

- Define `.zshenv`

  ```
  export XDG_CONFIG_HOME="$HOME/.config"
  export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
  ```

- oh-my-zsh
`sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`

- Homebrew
`/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`
  - add to path
    - `echo 'export PATH=/opt/homebrew/bin:$PATH' >> $ZDOTDIR/.zshrc && echo 'export PATH=/opt/homebrew/sbin:$PATH' >> $ZDOTDIR/.zshrc && source $ZDOTDIR/.zshrc`

---

### Homebrew Casks

`brew bundle` // using Brewfile

## SSH Key

`ssh-keygen -t ed25519 -C "your_email@example.com"`

`eval "$(ssh-agent -s)"`

`ssh-add ~/.ssh/id_ed25519`

Add to `~/.ssh/config`

```
Host $SSH_HOSTNAME
  AddKeysToAgent yes
  UseKeychain yes
  IdentityFile ~/.ssh/$SSH_PUB_KEY_FILE
```

---

## Config

`git clone git@github.com:jerrikneri/config.git Config`

`echo "source ~/Config/.index" >> $ZDOTDIR/.zshrc`

`source $ZDOTDIR/.zshrc`

TODO: figure out how to automate ln -s symlinks

---

## Local Dev Environment

NVM
`nvm install --lts`

`nvm alias default node`

---
