#!/usr/bin/env bash
set -e
# set -x

source "${HOME}/programming/archlinux-setup/lib/lib.sh"

enableTouchPad() {
    local touchpad_config_file="/usr/share/X11/xorg.conf.d/90-libinput.conf"

    if [[ ! -f "${touchpad_config_file}" || -s "${touchpad_config_file}" ]]; then
        sudo tee "${touchpad_config_file}" << EOF
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

aurPackages=(
    candy-icons
    sweet-cursor-theme
    lightdm-webkit-theme-aether
    polybar
    safeeyes
)

archPackages=(
    alacritty
    arandr
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
    sweet-gtk-theme-dark
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

mode=$1
case "${mode}" in 
    desktop)
        # do nothing
        ;;
    laptop)
        enableTouchPad
        ;;
    *)
        echo "Mode ${mode} does not exist!!!"
        echo "Valid modes: desktop or laptop"
        echo "Exiting..."

        exit 1
        ;;
esac
