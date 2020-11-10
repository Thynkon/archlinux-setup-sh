#!/usr/bin/env bash
#set -e

source "${HOME}/programming/arcolinux-setup/lib/lib.sh"

aurPackages=(
)

archPackages=(
    element-desktop
    telegram-desktop
)

installAurPackages "${aurPackages[@]}"
installArchPackages "${archPackages[@]}"
