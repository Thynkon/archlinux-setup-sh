#!/usr/bin/env bash
#set -e

source "${HOME}/programming/archlinux-setup/lib/lib.sh"

aurPackages=(
    dust-bin
    pick-colour-picker
    timeshift
    vifmimg-git
    zoxide
)

archPackages=(
    bat
    btrfs-progs
    chezmoi
    cronie
    ctags
    dconf-editor
    dmenu
    dosfstools
    e2fsprogs
    exfat-utils
    fd
    flameshot
    fzf
    grub-customizer
    htop
    jq
    lsd
    lsof
    neofetch
    ntfs-3g
    peek
    qbittorrent
    ripgrep
    rofi
    sharutils
    tree
    udiskie
    uudeview
    xsel
)

installAurPackages "${aurPackages[@]}"
installArchPackages "${archPackages[@]}"

# Periodic TRIM (SSD long-term performance)
sudo systemctl enable --now fstrim.timer
