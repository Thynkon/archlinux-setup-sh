#!/usr/bin/env bash
#set -e

source ../lib/lib.sh

aurPackages=(
)

archPackages=(
    dconf-editor
    dmenu
    flameshot
    fzf
    lsd
    lsof
    neofetch
    nmap
    ntfs-3g
    p7zip
    peek
    qbittorrent
    ripgrep
    rofi
    sharutils
    udiskie
    unzip
    uudeview
    zip
)

installAurPackages "${aurPackages[@]}"
installArchPackages "${archPackages[@]}"
