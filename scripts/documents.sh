#!/usr/bin/env bash
#set -e

source "${HOME}/programming/archlinux-setup/lib/lib.sh"

aurPackages=(
)

archPackages=(
    gscan2pdf
    libreoffice-fresh
    libreoffice-fresh-fr
    texlive-core
    texlive-fontsextra
    texlive-lang
    texlive-latexextra
    texlive-science
    xreader
    zathura
    zathura-pdf-poppler
)

installAurPackages "${aurPackages[@]}"
installArchPackages "${archPackages[@]}"
