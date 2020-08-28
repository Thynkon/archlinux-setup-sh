#!/usr/bin/env bash
#set -e

source ../lib/lib.sh

aurPackages=(
)

archPackages=(
    gimp
    imagemagick
    inkscape
    nomacs
    vlc
)

installAurPackages "${aurPackages[@]}"
installArchPackages "${archPackages[@]}"
