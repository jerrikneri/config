# PopOS Post Install 22.04 G14 2020 (GA401)

`sudo apt update && sudo apt upgrade -y`

Reboot

`sudo apt install zsh`

`sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`

`sudo apt install -y ubuntu-restricted-extras`

---

## TablePlus

`sudo apt install software-properties-common`

Add TablePlus gpg key

`wget -qO - https://deb.tableplus.com/apt.tableplus.com.gpg.key | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/tableplus-archive.gpg`

Add TablePlus repo

`sudo add-apt-repository "deb [arch=amd64] https://deb.tableplus.com/debian/22 tableplus main"`

Install

`sudo apt update`

`sudo apt install tableplus`

---

## asusctl

`sudo apt install libgtk-3-dev libpango1.0-dev libgdk-pixbuf-2.0-dev libglib2.0-dev cmake      libclang-dev libudev-dev libayatana-appindicator3-1 cargo`

`git clone https://gitlab.com/asus-linux/asusctl`

`cd asusctl`

`make`

`sudo make install`

`sudo systemctl daemon-reload`

`sudo systemctl restart asusd`

---

## OBS
`sudo add-apt-repository ppa:obsproject/obs-studio`

`sudo apt install obs-studio`

---

## Misc
- Visual Studio Code `sudo apt install code`
- Virtual Box `sudo apt-get install virtualbox virtualbox-ext-pack`
- Standard Notes `flatpak install flathub org.standardnotes.standardnotes`

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

## Librewolf

Change this command to choose a distro manually.

distro=$(if echo " bullseye focal impish jammy uma una vanessa" | grep -q " $(lsb_release -sc) "; then echo $(lsb_release -sc); else echo focal; fi)

wget -O- https://deb.librewolf.net/keyring.gpg | sudo gpg --dearmor -o /usr/share/keyrings/librewolf.gpg

sudo tee /etc/apt/sources.list.d/librewolf.sources << EOF > /dev/null
Types: deb
URIs: https://deb.librewolf.net
Suites: $distro
Components: main
Architectures: amd64
Signed-By: /usr/share/keyrings/librewolf.gpg
EOF

sudo apt update

sudo apt install librewolf -y

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

## Gnome Extensions

- Vitals
- Tweaks & Extensions in System Menu



## Sleep

`sudo kernelstub -a mem_sleep_default=deep`