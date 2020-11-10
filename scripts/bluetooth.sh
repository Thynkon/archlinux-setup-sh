#!/usr/bin/env bash
#set -e

source "${HOME}/programming/arcolinux-setup/lib/lib.sh"

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
