#!/usr/bin/env bash

installArchPackages() {
    sudo pacman -S --noconfirm --needed $@
}

installAurPackages() {
    paru -S $@
}

commandExists() {
    if [ ! $1 -v $1 > /dev/null 2>&1 ]; then
	return 0
    else
	return 1
    fi
}
