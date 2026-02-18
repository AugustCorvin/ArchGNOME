#!/bin/bash

packages=(
    gnome-maps
    gnome-music
    gnome-weather
)

for pkg in '${packages[@]}'; do
    if pacman -Qi '$pkg' &>/dev/null; then
        sudo pacman -Rns --noconfirm '$pkg'
        echo '$pkg has been deleted'
    else
        echo '$pkg not found'
    fi
done
