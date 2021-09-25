#!/usr/bin/env bash

source "${HOME}/programming/archlinux-setup/lib/lib.sh"

setupNeovim() {
    source "${HOME}/programming/archlinux-setup/lib/lib.sh"

    commandExists nvim
    if [[ $? -eq 0 ]]; then
	git clone https://github.com/wbthomason/packer.nvim\
		~/.local/share/nvim/site/pack/packer/opt/packer.nvim
    else
	echo "neovim is already installed"
    fi

    pip3 install --user pynvim
    nvim +PackerInstall
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
    neovim-git
    vscodium-bin

    # lsp servers
    lua-language-server
    nodejs-intelephense
    sql-language-server
    vscode-json-languageserver
)

archPackages=(
    # lsp servers
    bash-language-server
    gopls
    python-language-server
    rust-analyzer
    texlab
    vscode-css-languageserver
    vscode-html-languageserver
)

installAurPackages "${aurPackages[@]}"
installVscodiumExtensions

installArchPackages "${archPackages[@]}"
su "thynkon" -c "bash -c setupNeovim"
