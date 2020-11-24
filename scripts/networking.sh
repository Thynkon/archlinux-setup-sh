#!/usr/bin/env bash
#set -e

source "${HOME}/programming/arcolinux-setup/lib/lib.sh"

aurPackages=(
    suricata-git
)

archPackages=(
    curl
    inetutils # hostname
    iproute2
    networkmanager
    nmap
    wget
)

installAurPackages "${aurPackages[@]}"
installArchPackages "${archPackages[@]}"

sudo systemctl enable NetworkManager
