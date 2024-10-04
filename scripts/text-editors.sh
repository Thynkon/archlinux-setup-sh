#!/usr/bin/env bash

source "${HOME}/programming/archlinux-setup/lib/lib.sh"

aurPackages=(
	joplin-appimage
	logseq-desktop-bin
	neovim-git
	visual-studio-code-bin
)

archPackages=(
)

installAurPackages "${aurPackages[@]}"

installArchPackages "${archPackages[@]}"
