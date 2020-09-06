#!/usr/bin/env bash
#set -e

source ../lib/lib.sh

aurPackages=(
    dust-bin
    pick-colour-picker
    vifmimg-git
)

archPackages=(
    cronie
    dconf-editor
    dmenu
    etcher-bin
    fd
    flameshot
    fzf
    lsd
    lsof
    neofetch
    ntfs-3g
    peek
    qbittorrent
    ripgrep
    rofi
    sharutils
    timeshift
    tree
    udiskie
    uudeview
)

installAurPackages "${aurPackages[@]}"
installArchPackages "${archPackages[@]}"

# Periodic TRIM (SSD long-term performance)
sudo systemctl enable --now fstrim.timer
