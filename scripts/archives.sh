#!/usr/bin/env bash
#set -e

source "${HOME}/programming/arcolinux-setup/lib/lib.sh"

aurPackages=(
)

archPackages=(
    p7zip
    unzip
    xarchiver
    zip
)

installAurPackages "${aurPackages[@]}"
installArchPackages "${archPackages[@]}"
