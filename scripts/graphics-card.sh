#!/usr/bin/env bash
#set -e

source "${HOME}/programming/archlinux-setup/lib/lib.sh"

mode=$1

aurPackages=()
archPackages=()

setup_brightness() {
cat > /etc/X11/xorg.conf.d/20-intel.conf << EOL
Section "Device"
    Identifier  "Intel Graphics"
    Driver      "intel"
    Option      "Backlight"  "intel_backlight"
EndSection
EOL
}
export -f setup_brightness

case "${mode}" in
    desktop)
        aurPackages+=(gwe)
        archPackages+=(nvidia)
        ;;
    laptop)
        archPackages+=(xf86-video-intel)
        ;;
    *)
        echo "Mode ${mode} does not exist!!!"
        echo "Valid modes: desktop or laptop"
        echo "Exiting..."

        exit 1
        ;;
esac

installAurPackages "${aurPackages[@]}"
installArchPackages "${archPackages[@]}"

case "${mode}" in
    desktop)
        ;;
    laptop)
        su -c setup_brightness
        ;;
    *)
        echo "Mode ${mode} does not exist!!!"
        echo "Valid modes: desktop or laptop"
        echo "Exiting..."

        exit 1
        ;;
esac
