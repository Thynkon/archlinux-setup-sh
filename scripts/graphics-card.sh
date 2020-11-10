#!/usr/bin/env bash
#set -e

source "${HOME}/programming/arcolinux-setup/lib/lib.sh"

aurPackages=(
    gwe
)

archPackages=(
    nvidia
)

installAurPackages "${aurPackages[@]}"
installArchPackages "${archPackages[@]}"
