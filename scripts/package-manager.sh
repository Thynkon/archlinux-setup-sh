#!/usr/bin/env bash
#set -e

source ../lib/lib.sh

aurPackages=(
)

archPackages=(
    downgrade
    pamac-aur
)

installAurPackages "${aurPackages[@]}"
installArchPackages "${archPackages[@]}"
