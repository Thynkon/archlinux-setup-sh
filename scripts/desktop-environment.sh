#!/usr/bin/env bash
#set -e

source "${HOME}/programming/archlinux-setup/lib/lib.sh"

aurPackages=(
    bibata-cursor-theme
    lightdm-webkit-theme-aether
    polybar
    safeeyes
)

archPackages=(
    alacritty
    arandr
    arc-gtk-theme
    arc-icon-theme
    awesome
    bspwm
    dunst
    feh
    gnome-keyring
    gtk-engine-murrine
    gvfs-mtp # android file transfer
    lightdm
    lxappearance
    lxrandr
    numlockx
    picom
    polkit-gnome
    redshift
    seahorse
    sxhkd
    thunar
    thunar-archive-plugin
    thunar-volman
    wmname # fix java-based applications display problems
    xfce4-notifyd
    xfce4-power-manager
    xfce4-settings
    xorg
)

installAurPackages "${aurPackages[@]}"
installArchPackages "${archPackages[@]}"

sudo systemctl enable lightdm.service -f
