#!/usr/bin/env bash
#set -e

source ../lib/lib.sh

aurPackages=(
)

archPackages=(
    gscan2pdf
    libreoffice-fresh
    xreader
)

installAurPackages "${aurPackages[@]}"
installArchPackages "${archPackages[@]}"
