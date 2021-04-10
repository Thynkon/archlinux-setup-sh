#!/usr/bin/env bash

# usefull for debugging
#set -x

# exit on error
set -e

AUR_HELPER=""
MODE=""

find_args="-type f"
exclude_list=(
	desktop-environment
	package-manager
)

usage() {
	echo -e "usage:\n"
	echo -e "-a --aur-helper"
	echo -e "\tThe AUR helper you want to install"
	echo -e "\tOptions: yay or paru\n"
	echo -e "-h --help"
	echo -e "\t Display this message\n"
	echo -e "-m --mode\n"
	echo -e "\tComputer type"
	echo -e "\tDesktop: install nvidia graphic-cards driver, etc..."
	echo -e "\tLaptop: install battery tools, etc..."
}

parseOptions() {
	OPTS=$(getopt -o ha:m: --long aur-helper:,help,mode: -n 'parse-options' -- "$@")

	if [ $? != 0 ] ; then echo "Failed parsing options." >&2 ; exit 1 ; fi

	eval set -- "$OPTS"

	while true; do
		case "$1" in
			-a | --aur-helper ) AUR_HELPER="$2"; shift; shift ;;
			#-h | --help )    usage; shift ;;
			-h | --help )    usage; exit 0;;
			-m | --mode ) MODE="$2"; shift; shift ;;
			-- ) shift; break ;;
			* ) break ;;
		esac
	done
}

main() {
	parseOptions $@

	case "${MODE}" in
		desktop)
			exclude_list+=(laptop)
			;;
		laptop)
			exclude_list+=(graphics-card)
			;;
		*)
			echo "Mode ${mode} does not exist!!!"
			echo "Valid modes: desktop or laptop"
			echo "Exiting..."

			exit 1
			;;
	esac

	if [[ -z "${AUR_HELPER}" ]]; then
		echo "You must choose an AUR helper!"
		usage
		exit 1
	fi

	for f in "${exclude_list[@]}"; do
		find_args+=" ! -iname ${f}.sh"
	done

	## the scripts bellow must be executed before any other script
	# install the aur helper
	./scripts/package-manager.sh "${AUR_HELPER}"

	# install graphical interface
	./scripts/desktop-environment.sh

	file_list=($(find scripts ${find_args} | sort))
	for f in "${file_list[@]}"; do
		./${f}
	done
}

main $@

exit 0
