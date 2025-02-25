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

  asdf set erlang "${ERLANG_VERSION}"
  asdf set elixir "${ELIXIR_VERSION}"
}

aurPackages=(
  asdf-vm
  # 	gitahead
  zig-dev-bin
)

archPackages=(
  android-tools
  clang
  cmake
  composer
  dbeaver
  docker
  docker-buildx
  fop
  gcc
  gdb
  github-desktop
  glu
  go
  inotify-tools
  jq
  luarocks
  make
  ninja
  python
  python-pip
  rebar3
  rustup
  valgrind
  webkit2gtk
  wxwidgets-common
  wxwidgets-gtk3
)

installAurPackages "${aurPackages[@]}"
installArchPackages "${archPackages[@]}"

#install_elixir
