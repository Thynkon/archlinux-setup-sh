#!/usr/bin/env bash
#set -e

source "${HOME}/programming/archlinux-setup/lib/lib.sh"

aurPackages=(
  pick-colour-picker
  vifmimg-git
  zoxide
)

archPackages=(
  android-file-transfer
  bat
  btrfs-progs
  dust
  chezmoi
  cronie
  ctags
  dconf-editor
  dmenu
  dosfstools
  e2fsprogs
  # exfat-utils
  fd
  flameshot
  fzf
  # grub-customizer
  htop
  jq
  lsd
  lsof
  ntfs-3g
  lazydocker
  peek
  qbittorrent
  ripgrep
  rofi
  sharutils
  tree
  udiskie
  uudeview
  xsel
)

installAurPackages "${aurPackages[@]}"
installArchPackages "${archPackages[@]}"

# Periodic TRIM (SSD long-term performance)
sudo systemctl enable --now fstrim.timer
