#!/usr/bin/env bash
#set -e

source ../lib/lib.sh

aurPackages=(
)

archPackages=(
    nextcloud-client
)

installAurPackages "${aurPackages[@]}"
installArchPackages "${archPackages[@]}"
