#!/usr/bin/env bash
#set -e

source "${HOME}/programming/arcolinux-setup/lib/lib.sh"

aurPackages=(
)

archPackages=(
    nextcloud-client
)

installAurPackages "${aurPackages[@]}"
installArchPackages "${archPackages[@]}"
