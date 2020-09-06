#!/usr/bin/env bash
#set -e

source ../lib/lib.sh

aurPackages=(
    gwe
)

archPackages=(
    nvidia
)

installAurPackages "${aurPackages[@]}"
installArchPackages "${archPackages[@]}"
