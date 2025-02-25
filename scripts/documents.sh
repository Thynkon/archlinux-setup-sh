#!/usr/bin/env bash
#set -e

source "${HOME}/programming/archlinux-setup/lib/lib.sh"

aurPackages=(
)

archPackages=(
  gscan2pdf
  libreoffice-fresh
  libreoffice-fresh-fr
  xournalpp
  xreader
  zathura
  zathura-pdf-poppler
  poppler
  sioyek
  typst
)

installAurPackages "${aurPackages[@]}"
installArchPackages "${archPackages[@]}"
