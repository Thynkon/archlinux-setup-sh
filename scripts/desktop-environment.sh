#!/usr/bin/env bash
#set -e

source ../lib/lib.sh

aurPackages=(
)

archPackages=(
    alacritty
    arcolinux-awesome-git
    arcolinux-awesome-dconf-git
    arcolinux-config-awesome-git
    arcolinux-local-xfce4-git
    arcolinux-lightdm-gtk-greeter
    arcolinux-lightdm-gtk-greeter-settings
    arcolinux-logout-git
    arcolinux-xfce-git
    arcolinux-wallpapers-git
    awesome
    feh
    lightdm
    thunar
    thunar-archive-plugin
    thunar-volman
    vicious
)

cp -arf /etc/skel/. ~
sudo systemctl enable lightdm.service -f

installAurPackages "${aurPackages[@]}"
installArchPackages "${archPackages[@]}"

echo "################################################################"
echo "Reboot your system"
echo "################################################################"
