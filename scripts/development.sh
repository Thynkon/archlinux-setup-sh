#!/usr/bin/env bash
#set -e

source ../lib/lib.sh

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
    valgrind
    yarn
)

# Rust
commandExists rustup
if [[ $? -eq 0 ]]; then
    curl https://sh.rustup.rs -sSf | sh -s -- -y --no-modify-path
else
    echo "rustup is already installed"
fi

installAurPackages "${aurPackages[@]}"
installArchPackages "${archPackages[@]}"
