#!/usr/bin/env bash
#set -e

source ../lib/lib.sh

aurPackages=(
)

archPackages=(
    gscan2pdf
    libreoffice-fresh
    xreader
    zathura
    zathura-pdf-poppler
)

installAurPackages "${aurPackages[@]}"
installArchPackages "${archPackages[@]}"
