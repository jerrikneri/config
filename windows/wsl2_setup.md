# WSL2 Setup G14 2023 (GA401)

`sudo apt update && sudo apt upgrade -y`

Reboot

---

## zsh && oh-my-zsh

`sudo apt install zsh`

`sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`

`sudo apt install -y ubuntu-restricted-extras`

---

## SSH Key
`ssh-keygen -t ed25519 -C "your_email@example.com"`

`eval "$(ssh-agent -s)"`

`ssh-add ~/.ssh/id_ed25519`

---

## Config
`git clone git@github.com:jerrikneri/config.git Config`

`echo "source ~/Config/.index" >> .zshrc`

`source ~/.zshrc`

---

## QMK

`sudo apt-get install python3-pip`

`python3 -m pip install --user qmk`

`echo 'PATH="$HOME/.local/bin:$PATH"' >> $HOME/.zshrc && source $HOME/.zshrc`

`mkdir ~/Keyboard && cd ~/Keyboard && git clone git@github.com:jerrikneri/qmk_firmware.git QMK`

`build $PREONIC|$PLANCK`

---

## Local Dev Environment

PHP

`sudo apt install --no-install-recommends php8.1`

`sudo apt-get install -y php8.1-cli php8.1-common php8.1-mysql php8.1-zip php8.1-gd php8.1-mbstring php8.1-curl php8.1-xml php8.1-bcmath phpunit`

Composer

`sudo apt install composer -y`

Mysql

`sudo apt install mysql-server -y`

`sudo mysql`

`ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'password';`

NVM

`curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash`

`nvm install --lts`

`nvm alias default node`

---
