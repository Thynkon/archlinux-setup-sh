#!/usr/bin/env bash

mode=$1

case "${mode}" in 
    desktop)
	cat >> "/etc/sddm/Xsetup" <<- EOM
	# Dual monitor setup
	xrandr --output DVI-D-0 --mode 1920x1080  --output HDMI-0 --mode 1920x1080 --primary --left-of DVI-D-0
	EOM
        ;;
    *)
        echo "Mode ${mode} does not exist!!!"
        echo "Valid modes: desktop or laptop"
        echo "Exiting..."

        exit 1
        ;;
esac

exit 0
