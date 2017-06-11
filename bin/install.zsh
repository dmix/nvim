#!/usr/bin/env zsh

echo 'Update homebrew'
brew update
brew upgrade

echo 'Installing NeoVim'
brew tap neovim/homebrew-neovim
brew install --HEAD neovim

echo 'Installing Python/pip'
brew install python
brew install python3

echo 'Installing NeoVim Python packages'
pip2 install neovim --upgrade
pip3 install neovim --upgrade
