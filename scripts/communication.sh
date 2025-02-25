#!/usr/bin/env bash
#set -e

source "${HOME}/programming/archlinux-setup/lib/lib.sh"

aurPackages=(
)

archPackages=(
  webcord
  element-desktop
  telegram-desktop
  signal-desktop
)

installAurPackages "${aurPackages[@]}"
installArchPackages "${archPackages[@]}"
