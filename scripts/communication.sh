#!/usr/bin/env bash
#set -e

source "${HOME}/programming/archlinux-setup/lib/lib.sh"

aurPackages=(
    newsflash
)

archPackages=(
    element-desktop
    telegram-desktop
)

installAurPackages "${aurPackages[@]}"
installArchPackages "${archPackages[@]}"
