#!/usr/bin/env bash
#set -e

source ../lib/lib.sh

aurPackages=(
    nerd-fonts-fantasque-sans-mono
    ttf-iosevka
    ttf-meslo-nerd-font-powerlevel10k
    ttf-roboto
    ttf-roboto-mono
)

archPackages=(
    arcolinux-fonts-git
    awesome-terminal-fonts
    adobe-source-sans-pro-fonts
    cantarell-fonts
    noto-fonts
    otf-hermit
    tamsyn-font
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
