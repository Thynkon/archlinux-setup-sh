#!/usr/bin/env bash
#set -e

source "${HOME}/programming/archlinux-setup/lib/lib.sh"

aurPackages=(
)

archPackages=(
    nextcloud-client
)

installAurPackages "${aurPackages[@]}"
installArchPackages "${archPackages[@]}"
