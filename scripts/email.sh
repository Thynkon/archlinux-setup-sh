#!/usr/bin/env bash
#set -e

source ../lib/lib.sh

aurPackages=(
    protonmail-bridge
)

archPackages=(
    thunderbird
)

installAurPackages "${aurPackages[@]}"
installArchPackages "${archPackages[@]}"
