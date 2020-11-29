#!/usr/bin/env bash
#set -e

source "${HOME}/programming/archlinux-setup/lib/lib.sh"

aurPackages=(
    android-studio
    gitahead
)

archPackages=(
    android-tools
    clang
    cmake
    composer
    dbeaver
    gcc
    go
    jdk11-openjdk
    jq
    luarocks
    make
    maven
    nginx
    nodejs
    npm
    python
    python-pip
    rustup
    valgrind
    yarn
)

installAurPackages "${aurPackages[@]}"
installArchPackages "${archPackages[@]}"
