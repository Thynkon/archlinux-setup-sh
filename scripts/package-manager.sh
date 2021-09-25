#!/usr/bin/env bash
set -e
set -u

source "${HOME}/programming/archlinux-setup/lib/lib.sh"

PACMAN_CONF="/etc/pacman.conf"
CHAOTIC_PUB_KEY="3056513887B78AEB"
CHAOTIC_KEY_SERVER="keyserver.ubuntu.com"

installAurHelper() {
    local repo_url=""
    local aur_helper=$1
    local AUR_HELPER_DIRECTORY=""

    if [[ "${aur_helper}" != "paru" && "${aur_helper}" != "yay" ]]; then
	echo "Invalid aur helper: ${aur_helper}"
	echo "Exiting..."
	exit 1
    fi

    repo_url="https://aur.archlinux.org/${aur_helper}.git"
    AUR_HELPER_DIRECTORY="${HOME}/programming/${aur_helper}"

    [ -d "${AUR_HELPER_DIRECTORY}" ] || mkdir -p "${AUR_HELPER_DIRECTORY}"
    cd "${AUR_HELPER_DIRECTORY}"

    # install AUR helper
    git clone "${repo_url}" . && makepkg -si
}

enableChaoticRepo() {
    sudo pacman-key --recv-key "${CHAOTIC_PUB_KEY}" --keyserver "${CHAOTIC_KEY_SERVER}"
    sudo pacman-key --lsign-key "${CHAOTIC_PUB_KEY}"
    sudo pacman -U 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-'{keyring,mirrorlist}'.pkg.tar.zst'

    grep "^[chaotic-aur]$" "${PACMAN_CONF}" || sudo cat <<EOT >> "${PACMAN_CONF}"
[chaotic-aur]
Include = /etc/pacman.d/chaotic-mirrorlist
EOT
}

enableColors() {
    grep "^#(.*)Color$" "${PACMAN_CONF}" &&
	# enable pacman and yay colors
	sudo sed -i -r "s/^#(.*)Color$/Color/g" "${PACMAN_CONF}"
}

main () {
    local archPackages=(
	base-devel
	devtools # makechroot
	pacman-contrib
	pkgfile # command-not-found
	reflector # find fastest mirror
    )

    installArchPackages "${archPackages[@]}"
    installAurHelper $1

    sudo pkgfile --update

    # get fastest mirror
    sudo reflector -f 30 -l 30 --number 10 --verbose --save /etc/pacman.d/mirrorlist
    sudo systemctl enable --now reflector

    enableChaoticRepo
    enableColors
}

main $@

exit 0
