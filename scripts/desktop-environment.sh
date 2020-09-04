#!/usr/bin/env bash
#set -e

source ../lib/lib.sh

aurPackages=(
    compton-tryone-git
)

archPackages=(
    alacritty
    arandr
    arc-gtk-theme
    arcolinux-awesome-dconf-git
    arcolinux-awesome-git
    arcolinux-bin-git
    arcolinux-config-awesome-git
    arcolinux-hblock-git
    arcolinux-lightdm-gtk-greeter
    arcolinux-lightdm-gtk-greeter-settings
    arcolinux-local-xfce4-git
    arcolinux-logout-git
    arcolinux-root-git
    arcolinux-tweak-tool-git
    arcolinux-variety-git
    arcolinux-wallpapers-git
    arcolinux-xfce-git
    awesome
    feh
    gnome-keyring
    gtk-engine-murrine
    hardcode-fixer-git
    i3lock-color
    lightdm
    lxappearance
    lxrandr
    redshift
    safeeyes
    seahorse
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
