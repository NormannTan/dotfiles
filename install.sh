#!/usr/bin/env bash

command_exists() {
    type "$1" > /dev/null 2>&1
}

echo "Installing dotfiles."

echo "Initializing submodule(s)"
git submodule update --init --recursive

source install/link.sh

source install/git.sh

# check if macOS
if [ "$(uname)" == "Darwin" ]; then
    echo -e "\n\nRunning on macOS"

    source install/brew.sh

    source install/osx.sh
fi

# check if arch-linux
if [ -f "/etc/arch-release" ]; then
    echo -e "\n\nRunning on Arch Linux"

    source install/arch.sh
fi


echo "creating vim directories"
mkdir -p ~/.vim-tmp

if ! command_exists zsh; then
    echo "zsh not found. Please install and then re-run installation scripts"
    exit 1
elif ! [[ $SHELL =~ .*zsh.* ]]; then
    echo "Configuring zsh as default shell"
    chsh -s $(which zsh)
fi

if ! command_exists zplug; then
    echo "installing zplug, a plugin manager for zsh - http://zplug.sh"
    git clone https://github.com/zplug/zplug ~/.zplug
fi

echo "Done. Reload your terminal."
