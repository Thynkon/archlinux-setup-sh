#!/usr/bin/env bash

# usefull for debugging
# set -x

# exit on error
set -e

find_args="-type f"
exclude_list=(
	desktop-environment
	package-manager
)

main () {
	if [ $# -ne 1 ]; then
		echo "Please enter only one argument!!!"
		echo "Exiting..."
		exit 1
	else
		mode=$1
	fi

	case "${mode}" in
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

	for f in "${exclude_list[@]}"; do
		find_args+=" ! -iname ${f}.sh"
	done

	## the scripts bellow must be executed before any other script
	# install yay
	./scripts/package-manager.sh

	# install graphical interface
	./scripts/desktop-environment.sh

	file_list=($(find scripts ${find_args} | sort))
	for f in "${file_list[@]}"; do
		echo -e "Executing ${f}\n"
		./${f}
	done
}

main $@

exit 0
