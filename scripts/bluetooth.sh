#!/usr/bin/env bash
#set -e

source ../lib/lib.sh

aurPackages=(
)

archPackages=(
    pulseaudio-bluetooth
    bluez
    bluez-libs
    bluez-utils
    blueberry
)

installAurPackages "${aurPackages[@]}"
installArchPackages "${archPackages[@]}"
