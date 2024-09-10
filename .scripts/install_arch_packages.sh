echo "Installing pacman packages..."

xargs -a ../arch/pacmans -I{} sudo pacman -S --noconfirm --needed {} || echo "Failed to install {}"^C

echo "Installing yay packages..."

xargs -a ../arch/yays -I{} yay -S --noconfirm --needed {} || echo "Failed to install {}"^C

