#!/usr/bin/env bash
#set -e

source "${HOME}/programming/archlinux-setup/lib/lib.sh"

aurPackages=(
    virtualbox-ext-oracle
)

archPackages=(
    virtualbox
    bridge-utils # networking
)

installAurPackages "${aurPackages[@]}"
installArchPackages "${archPackages[@]}"

sudo usermod -aG vboxusers $(whoami)
