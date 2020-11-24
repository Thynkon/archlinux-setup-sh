#!/usr/bin/env bash
#set -e

install_yay() {
    local REPO_URL="https://aur.archlinux.org/yay.git"
    local YAY_DIRECTORY="${HOME}/programming/yay"

    [ -d "${YAY_DIRECTORY}" ] || mkdir -p "${YAY_DIRECTORY}"
    cd "${YAY_DIRECTORY}"

    makepkg -si
}

archPackages=(
    base-devel
)

installArchPackages "${archPackages[@]}"
install_yay

# enable pacman and yay colors
sudo sed -i -r "s/^#(.*)Color$/Color/g" /etc/pacman.conf
