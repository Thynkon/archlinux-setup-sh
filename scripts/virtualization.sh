#!/usr/bin/env bash
#set -e

source "${HOME}/programming/arcolinux-setup/lib/lib.sh"

aurPackages=(
    virtualbox-ext-oracle
)

archPackages=(
    virtualbox
)

sudo usermod -aG vboxusers $(whoami)

installAurPackages "${aurPackages[@]}"
installArchPackages "${archPackages[@]}"
