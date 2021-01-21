#!/usr/bin/env bash
#set -e

source "${HOME}/programming/archlinux-setup/lib/lib.sh"

PACMAN_CONF="/etc/pacman.conf"

install_aur_helper() {
    local repo_url=""

    if [ "${AUR_HELPER}" != "paru" || "${AUR_HELPER}" != "yay" ]; then
	echo "Invalid aur helper: ${AUR_HELPER}"
	echo "Exiting..."
	exit 1
    fi

    repo_url="https://aur.archlinux.org/${AUR_HELPER}.git"
    local AUR_HELPER_DIRECTORY="${HOME}/programming/${AUR_HELPER}"

    [ -d "${AUR_HELPER_DIRECTORY}" ] || mkdir -p "${AUR_HELPER_DIRECTORY}"
    cd "${AUR_HELPER_DIRECTORY}"

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

AUR_HELPER="paru"

installArchPackages "${archPackages[@]}"
install_aur_helper

sudo pkgfile --update

# get fastest mirror
sudo reflector -f 30 -l 30 --number 10 --verbose --save /etc/pacman.d/mirrorlist

enable_colors

 exit 0
