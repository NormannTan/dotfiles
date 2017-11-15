#!/bin/bash

## Install Packages
sudo pacman -Syu
sudo pacman -Sy --needed base-devel tree zsh neovim wget tmux git curl
bash <(curl aur.sh) -sic package-query yaourt
yaourt -Syu
yaourt -Sy zplug ttf-monaco
