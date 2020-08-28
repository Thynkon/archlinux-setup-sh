#!/usr/bin/env bash
#set -e

source ../lib/lib.sh

aurPackages=(
)

archPackages=(
    element-desktop
    telegram-desktop
)

installAurPackages "${aurPackages[@]}"
installArchPackages "${archPackages[@]}"
