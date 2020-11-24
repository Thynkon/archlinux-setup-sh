#!/usr/bin/env bash
#set -e

source "${HOME}/programming/arcolinux-setup/lib/lib.sh"

aurPackages=(
    android-studio
)

archPackages=(
    android-tools
    clang
    cmake
    composer
    dbeaver
    gcc
    gitahead
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
