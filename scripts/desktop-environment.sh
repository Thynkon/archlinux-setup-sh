#!/usr/bin/env bash
set -e
# set -x

source "$HOME}/programming/archlinux-setup/lib/lib.sh"

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
  hyprlauncher
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
  hyprland
  hyprpaper
  hyprwayland-scanner
  lightdm
  lxappearance
  lxrandr
  network-manager-applet
  numlockx
  picom
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
  xorg
  yazi
  zellij
)

installAurPackages "${aurPackages[@]}"
installArchPackages "${archPackages[@]}"
setup_hyprland

#sudo systemctl enable lightdm.service -f

# mode=$1
# case "${mode}" in
# desktop)
# 	# do nothing
# 	;;
# laptop)
# 	enableTouchPad
# 	;;
# *)
# 	echo "Mode ${mode} does not exist!!!"
# 	echo "Valid modes: desktop or laptop"
# 	echo "Exiting..."
#
# 	exit 1
# 	;;
# esac
