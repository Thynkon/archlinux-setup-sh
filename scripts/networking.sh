#!/usr/bin/env bash
#set -e

source "${HOME}/programming/arcolinux-setup/lib/lib.sh"

aurPackages=(
    suricata-git
)

archPackages=(
    curl
    nmap
    wget
)

installAurPackages "${aurPackages[@]}"
installArchPackages "${archPackages[@]}"
