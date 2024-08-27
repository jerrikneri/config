#Keyboard

alias cqmk="cd ~/Keyboard/QMK && gco jerrik"
alias czmk="cd ~/Keyboard/zmk"
alias kqmk="cd ~/Keyboard/keychron && gco bluetooth_playground"

alias clone-k-qmk="cd ~/Keyboard && git clone https://github.com/Keychron/qmk_firmware.git keychron"

alias sync-k8-keymap="ln -s ~/Keyboard/QMK/keyboards/keychron/k8_pro/jerrik/keymap.c ~/Keyboard/keychron/keyboards/keychron/k8_pro/ansi/white/keymaps/jerrik/keymap.c"
alias build-k8="kqmk && make keychron/k8_pro/ansi/white:jerrik"
alias flash-k8="kqmk && make keychron/k8_pro/ansi/white:jerrik:flash"

build() {
	 cqmk && qmkCompile $1 && qmkFlash $1
}

qmkCompile() {
    qmk compile -kb $1 -km jerrik
}

qmkFlash() {
    qmk flash -kb $1 -km jerrik
}

kb() {
   if [ $1 = "hhkb" ]; then
    cqmk && cd keyboards/$1/keymaps/$1-JERRIK
   else
	  cd ~/Keyboard/QMK/keyboards/$1/keymaps/$1-grid-JERRIK
   fi
}
