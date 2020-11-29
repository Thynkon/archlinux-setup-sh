#!/usr/bin/env bash
#set -e

source "${HOME}/programming/archlinux-setup/lib/lib.sh"

aurPackages=(
    brave-bin
)

archPackages=(
    firefox-developer-edition
    w3m
)

installAurPackages "${aurPackages[@]}"
installArchPackages "${archPackages[@]}"
