#!/usr/bin/env bash
#set -e

source "${HOME}/programming/archlinux-setup/lib/lib.sh"

PACMAN_CONF="/etc/pacman.conf"

install_yay() {
    local REPO_URL="https://aur.archlinux.org/yay.git"
    local YAY_DIRECTORY="${HOME}/programming/yay"

    [ -d "${YAY_DIRECTORY}" ] || mkdir -p "${YAY_DIRECTORY}"
    cd "${YAY_DIRECTORY}"

    makepkg -si
}

enable_colors() {
    grep "^#(.*)Color$" "${PACMAN_CONF}" &&
	# enable pacman and yay colors
	sudo sed -i -r "s/^#(.*)Color$/Color/g" "${PACMAN_CONF}"
}

archPackages=(
    base-devel
    pacman-contrib
    pkgfile # command-not-found
    reflector # find fastest mirror
)

installArchPackages "${archPackages[@]}"
install_yay

sudo pkgfile --update

# get fastest mirror
sudo reflector -f 30 -l 30 --number 10 --verbose --save /etc/pacman.d/mirrorlist

enable_colors

 exit 0
