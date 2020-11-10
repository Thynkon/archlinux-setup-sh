#!/usr/bin/env bash
#set -e

source "${HOME}/programming/arcolinux-setup/lib/lib.sh"

aurPackages=(
    lightdm-webkit-theme-aether
)

archPackages=(
    alacritty
    arandr
    arc-gtk-theme
    arcolinux-awesome-dconf-git
    arcolinux-config-awesome-git
    arcolinux-hblock-git
    arcolinux-lightdm-gtk-greeter
    arcolinux-lightdm-gtk-greeter-settings
    arcolinux-local-xfce4-git
    arcolinux-logout-git
    arcolinux-root-git
    arcolinux-systemd-services-git
    arcolinux-tweak-tool-git
    arcolinux-wallpapers-git
    arcolinux-xfce-git
    awesome
    bspwm
    dunst
    feh
    gnome-keyring
    gtk-engine-murrine
    hardcode-fixer-git
    i3lock-color
    lightdm
    lxappearance
    lxrandr
    picom
    redshift
    safeeyes
    seahorse
    sxhkd
    thunar
    thunar-archive-plugin
    thunar-volman
    variety
    vicious
    xfce4-notifyd
    xfce4-power-manager
    xfce4-settings
)

installAurPackages "${aurPackages[@]}"
installArchPackages "${archPackages[@]}"

cp -arf /etc/skel/. ~
sudo systemctl enable lightdm.service -f

echo "################################################################"
echo "Reboot your system"
echo "################################################################"
