#!/usr/bin/env bash
#set -e

source "${HOME}/programming/archlinux-setup/lib/lib.sh"

aurPackages=(
)

archPackages=(
    curl
    inetutils # hostname
    iproute2
    bind # nslookup
    network-manager-applet
    networkmanager
    nmap
    wget
)

installAurPackages "${aurPackages[@]}"
installArchPackages "${archPackages[@]}"

sudo systemctl enable NetworkManager
