#!/usr/bin/env bash
#set -e

source "${HOME}/programming/archlinux-setup/lib/lib.sh"

aurPackages=(
    brave-bin
    zen-browser-bin
)

archPackages=(
)

installAurPackages "${aurPackages[@]}"
installArchPackages "${archPackages[@]}"
