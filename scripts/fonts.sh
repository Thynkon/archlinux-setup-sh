#!/usr/bin/env bash
#set -e

source "${HOME}/programming/archlinux-setup/lib/lib.sh"

aurPackages=(
    nerd-fonts-fantasque-sans-mono
    ttf-iosevka
    ttf-meslo-nerd-font-powerlevel10k
    ttf-roboto
    ttf-roboto-mono
)

archPackages=(
    awesome-terminal-fonts
    cantarell-fonts
    noto-fonts
    otf-hermit
    tamsyn-font
    terminus-font
    ttf-bitstream-vera
    ttf-dejavu
    ttf-droid
    ttf-hack
    ttf-inconsolata
    ttf-liberation
    ttf-ubuntu-font-family
)

installAurPackages "${aurPackages[@]}"
installArchPackages "${archPackages[@]}"

# add path to 'font's search path'
fc-cache -f  ~/local/share/fonts
