#!/usr/bin/env bash
#set -e

source "${HOME}/programming/arcolinux-setup/lib/lib.sh"

aurPackages=(
    lightdm-webkit-theme-aether
    polybar
    safeeyes
)

archPackages=(
    alacritty
    arandr
    arc-gtk-theme
    awesome
    bspwm
    dunst
    feh
    gnome-keyring
    gtk-engine-murrine
    lightdm
    lxappearance
    lxrandr
    picom
    redshift
    seahorse
    sxhkd
    thunar
    thunar-archive-plugin
    thunar-volman
    xfce4-notifyd
    xfce4-power-manager
    xfce4-settings
    xorg
)

installAurPackages "${aurPackages[@]}"
installArchPackages "${archPackages[@]}"

sudo systemctl enable lightdm.service -f
