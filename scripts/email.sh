#!/usr/bin/env bash
#set -e

source "${HOME}/programming/archlinux-setup/lib/lib.sh"

aurPackages=(
    protonmail-bridge
)

archPackages=(
    thunderbird
)

installAurPackages "${aurPackages[@]}"
installArchPackages "${archPackages[@]}"
