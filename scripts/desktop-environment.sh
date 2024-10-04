#!/usr/bin/env bash
set -e
# set -x

source "${HOME}/programming/archlinux-setup/lib/lib.sh"

enableTouchPad() {
  local touchpad_config_file="/usr/share/X11/xorg.conf.d/90-libinput.conf"

  if [[ ! -f "${touchpad_config_file}" || -s "${touchpad_config_file}" ]]; then
    sudo tee "${touchpad_config_file}" <<EOF
Section "InputClass"
    Identifier "libinput touchpad catchall"
    MatchIsTouchpad "on"
    MatchDevicePath "/dev/input/event*"
    Driver "libinput"
    Option "Tapping" "True"
    Option "DisableWhileTyping" "True"
EndSection
EOF
  fi

  return 0
}

setup_hyprland() {
  hyprpm add https://github.com/Duckonaut/split-monitor-workspaces
  hyprpm enable split-monitor-workspaces

  hyprpm add -v https://github.com/horriblename/hyprgrass
  hyprpm enable hyprgrass

  hyprpm reload
}

aurPackages=(
  safeeyes
  hyprland-git
)

archPackages=(
  alacritty
  arandr
  dunst
  feh
  glm
  gnome-keyring
  gvfs-mtp # android file transfer
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
  xclip
  xdg-desktop-portal-hyprland
  xfce4-notifyd
  xfce4-power-manager
  xfce4-settings
  xorg
  yazi
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
