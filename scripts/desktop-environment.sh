#!/usr/bin/env bash
set -e
# set -x

source "${HOME}/programming/archlinux-setup/lib/lib.sh"

setup_hyprland() {
  hyprpm add https://github.com/Duckonaut/split-monitor-workspaces
  hyprpm enable split-monitor-workspaces

  hyprpm add -v https://github.com/horriblename/hyprgrass
  hyprpm enable hyprgrass

  hyprpm add https://github.com/zakk4223/hyprNStack
  hyprpm enable hyprNStack

  hyprpm reload
}

aurPackages=(
  safeeyes
#  hyprlauncher
  swaylock
)

archPackages=(
  alacritty
  arandr
  dunst
  feh
  glm
  gnome-keyring
  gvfs-mtp # android file transfer
#  hyprland
#  hyprpaper
#  hyprwayland-scanner
  lightdm
  lxappearance
  lxrandr
  network-manager-applet
  numlockx
  polkit-gnome
  thunar
  thunar-archive-plugin
  thunar-volman
  tmux
  wezterm
  wmname # fix java-based applications display problems
  wpaperd
  xclip
  xdg-desktop-portal-hyprland
  xfce4-notifyd
  xfce4-power-manager
  xfce4-settings
  yazi
  zellij
)

installAurPackages "${aurPackages[@]}"
installArchPackages "${archPackages[@]}"
#setup_hyprland
