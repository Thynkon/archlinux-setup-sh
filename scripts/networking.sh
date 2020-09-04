#!/usr/bin/env bash
#set -e

source ../lib/lib.sh

aurPackages=(
    suricata-git
)

archPackages=(
    curl
    nmap
    wget
)

installAurPackages "${aurPackages[@]}"
installArchPackages "${archPackages[@]}"
