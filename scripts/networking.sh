#!/usr/bin/env bash
#set -e

source "${HOME}/programming/archlinux-setup/lib/lib.sh"

aurPackages=(
)

archPackages=(
  bind # nslookup
  curl
  globalprotect-openconnect
  inetutils # hostname
  iproute2
  network-manager-applet
  networkmanager
  nmap
  wget
)

installAurPackages "${aurPackages[@]}"
installArchPackages "${archPackages[@]}"

sudo systemctl enable NetworkManager
