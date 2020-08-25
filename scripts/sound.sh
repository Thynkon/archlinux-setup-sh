#!/usr/bin/env bash
#set -e

source ./lib/lib.sh

aurPackages=(
)

archPackages=(
    alsa-firmware
    alsa-lib
    alsa-plugins
    alsa-utils
    gstreamer
    gst-plugins-good
    gst-plugins-bad
    gst-plugins-base
    gst-plugins-ugly
    pavucontrol
    playerctl
    pulseaudio
    pulseaudio-alsa
)

installAurPackages "${aurPackages[@]}"
installArchPackages "${archPackages[@]}"
