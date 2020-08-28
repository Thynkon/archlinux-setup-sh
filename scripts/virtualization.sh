#!/usr/bin/env bash
#set -e

source ../lib/lib.sh

aurPackages=(
)

archPackages=(
    virtualbox
)

installAurPackages "${aurPackages[@]}"
installArchPackages "${archPackages[@]}"
