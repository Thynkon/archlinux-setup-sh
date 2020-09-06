#!/usr/bin/env bash

source ../lib/lib.sh

setupNeovim() {
    source ../lib/lib.sh

    commandExists nvim
    if [[ $? -eq 0 ]]; then
	curl -fLo "${HOME}"/.local/share/nvim/site/autoload/plug.vim --create-dirs \
	    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    else
	echo "neovim is already installed"
    fi

    pip3 install --user pynvim
}
export -f setupNeovim

installVscodiumExtensions() {
    local extensions=(
	amiralizadeh9480.laravel-extra-intellisense
	bmewburn.vscode-intelephense-client
	codingyu.laravel-goto-view
	editorconfig.editorconfig
	felixfbecker.php-debug
	felixfbecker.php-intellisense
	felixfbecker.php-pack
	mikestead.dotenv
	onecentlin.laravel5-snippets
	onecentlin.laravel-blade
	onecentlin.laravel-extension-pack
	ryannaddy.laravel-artisan
	zhuangtongfa.material-theme
    )

    for extension in "${extensions[@]}"; do
	codium --install-extension "${extension}"
    done
}

aurPackages=(
    joplin-appimage
    vscodium-bin
)

archPackages=(
    neovim
)

installAurPackages "${aurPackages[@]}"
installVscodiumExtensions

installArchPackages "${archPackages[@]}"
su "thynkon" -c "bash -c setupNeovim"
