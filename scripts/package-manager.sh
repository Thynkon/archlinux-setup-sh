#!/usr/bin/env bash
#set -e

source "${HOME}/programming/arcolinux-setup/lib/lib.sh"

aurPackages=(
)

archPackages=(
    downgrade
    pamac-aur
)

installAurPackages "${aurPackages[@]}"
installArchPackages "${archPackages[@]}"
