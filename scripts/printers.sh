#!/usr/bin/env bash
#set -e

source "${HOME}/programming/arcolinux-setup/lib/lib.sh"

aurPackages=(
)

archPackages=(
    cups
    cups-pdf
    ghostscript
    gsfonts
    gscan2pdf
    gutenprint
    gtk3-print-backends
    libcups
    system-config-printer
)

installAurPackages "${aurPackages[@]}"
installArchPackages "${archPackages[@]}"
