#!/bin/bash

source ./.sources/bash_loading_animations.sh
trap BLA::stop_loading_animation SIGINT

clear

DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

set -e 

echo ""
echo "Alternative script for directly copying the dotfiles (if not using stow)" 
echo ""
echo "IMPORTANT: Be careful, if you currently have an existing configuration,"
echo "those will get OVERWRITTEN. Go on at your own risk."
echo ""

read -p "Do you want to continue? (y/N): " respuesta

respuesta=${respuesta,,}

if [[ "$respuesta" != "y" ]]; then
    echo "No action was taken."
    exit 1
fi

tput civis
echo "Copying configuration..."
BLA::start_loading_animation "${BLA_braille_whitespace[@]}"

cp -r "$DOTFILES_DIR/btop" ~/.config/btop
cp -r "$DOTFILES_DIR/dunst" ~/.config/dunst
cp -r "$DOTFILES_DIR/fish" ~/·config/fish
cp -r "$DOTFILES_DIR/i3" ~/.config/i3
cp -r "$DOFILES_DIR/kitty" ~/.config/kitty
cp -r "$DOFILES_DIR/picom" ~/.config/picom
cp -r "$DOTFILES_DIR/polybar" ~/.config/polybar
cp -r "$DOFILES_DIR/rofi" ~/.config/rofi

cp -r "~$DOTFILES_DIR/wallpapers" ~/Pictures/wallpapers 
sleep 2

BLA::stop_loading_animation
echo ""
echo "All done!"
