#!/usr/bin/env bash
# set -e
set -x

source "${HOME}/programming/arcolinux-setup/lib/lib.sh"

setup_powertop() {
    local powertop_unit_file="/etc/systemd/system/powertop.service"

    if [ ! -f "${powertop_unit_file}" ]; then
    cat > "${powertop_unit_file}" << EOF
[Unit]
Description=Powertop tunings

[Service]
Type=oneshot
ExecStart=/usr/bin/powertop --auto-tune

[Install]
WantedBy=multi-user.target
EOF

        systemctl daemon-reload && systemctl enable --now powertop.service
    fi
}

aurPackages=(
)

archPackages=(
    powertop
    tlp
    tlp-rdw
)

installAurPackages "${aurPackages[@]}"
installArchPackages "${archPackages[@]}"

sudo systemctl enable tlp
sudo bash -c "$(declare -f setup_powertop); setup_powertop"
