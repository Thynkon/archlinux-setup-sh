#!/usr/bin/env bash
#set -e

source "${HOME}/programming/arcolinux-setup/lib/lib.sh"

aurPackages=(
)

archPackages=(
    gscan2pdf
    libreoffice-fresh
    libreoffice-fresh-fr
    xreader
    zathura
    zathura-pdf-poppler
)

installAurPackages "${aurPackages[@]}"
installArchPackages "${archPackages[@]}"
