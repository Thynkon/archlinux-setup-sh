#!/usr/bin/env bash
#set -e

source "${HOME}/programming/arcolinux-setup/lib/lib.sh"

aurPackages=(
    dust-bin
    pick-colour-picker
    vifmimg-git
    zoxide
)

archPackages=(
    bat
    cronie
    ctags
    dconf-editor
    dmenu
    etcher-bin
    fd
    flameshot
    fzf
    grub-customizer
    htop
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
