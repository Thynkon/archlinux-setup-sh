#!/usr/bin/env bash
#set -e

source ./lib/lib.sh

aurPackages=(
    brave-bin
)

archPackages=(
    firefox-developer-edition
)

installAurPackages "${aurPackages[@]}"
installArchPackages "${archPackages[@]}"
