#!/usr/bin/env bash
#set -e

source ./lib/lib.sh

aurPackages=(
)

archPackages=(
    clang
    composer
    gcc
    jdk11-openjdk
    luarocks
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
