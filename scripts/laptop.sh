#!/usr/bin/env bash
#set -e

source "${HOME}/programming/arcolinux-setup/lib/lib.sh"

aurPackages=(
)

archPackages=(
    tlp
)

installAurPackages "${aurPackages[@]}"
installArchPackages "${archPackages[@]}"

sudo systemctl enable tlp
