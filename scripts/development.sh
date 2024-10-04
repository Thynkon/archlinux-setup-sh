#!/usr/bin/env bash
#set -e

source "${HOME}/programming/archlinux-setup/lib/lib.sh"

# @TODO: install asdf and ruby, java, elixir, erlang

install_elixir() {
  OTP_VERSION="27"
  ERLANG_VERSION="${OTP_VERSION}.0.0"
  ELIXIR_VERSION="1.17.2-otp-${OTP_VERSION}"

  asdf install erlang "${ERLANG_VERSION}"
  asdf install elixir "${ELIXIR_VERSION}"

  asdf global erlang "${ERLANG_VERSION}"
  asdf global elixir "${ELIXIR_VERSION}"
}

# aurPackages=(
# 	android-studio
# 	asdf-vm
# 	gitahead
# 	zig-dev-bin
# )
#
# archPackages=(
# glu
# rebar3
# inotify-tools
# webkit2gtk
# 	android-tools
# 	clang
# 	cmake
# 	cmake
# 	composer
# 	dbeaver
# 	deno
# 	gcc
# 	gdb
# 	github-desktop
# 	go
# 	jq
# 	luarocks
# 	make
# 	mariadb
# 	mariadb-clients
# 	ninja
# 	python
# 	python-pip
# 	ruby
# 	rustup
# 	valgrind
# 	docker
# 	docker-buildx
# fop
# wxwidgets-common
# wxwidgets-gtk3
# )
#
# installAurPackages "${aurPackages[@]}"
# installArchPackages "${archPackages[@]}"

install_elixir
