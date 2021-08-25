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
    deno
    gcc
    go
    jdk11-openjdk
    jq
    luarocks
    make
    mariadb
    mariadb-clients
    maven
    nginx
    nginx
    nodejs
    npm
    php
    php-cgi
    php-fpm
    python
    python-pip
    ruby
    rustup
    valgrind
    yarn
)

installAurPackages "${aurPackages[@]}"
installArchPackages "${archPackages[@]}"
