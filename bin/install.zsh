#!/usr/bin/env zsh

echo '> Installing NVIM config'

TMP_DIR=$HOME/tmp

if [[ "$(uname)" = 'Darwin' ]]; then
  echo '> OSX Detected'

  echo '> Updatng homebrew'
  brew update
  brew upgrade

  echo '> Installing NeoVim'
  brew tap neovim/homebrew-neovim
  brew install --HEAD neovim

  echo '> Installing Python/pip'
  brew install python
  brew install python3
fi

if [[ "$(uname -a)" =~ 'Debian' ]]; then
  echo '> Debian Detected'

  sudo apt-get update
  sudo apt-get install \
    libtool libtool-bin \
    autoconf automake cmake \
    libncurses5-dev g++ pkg-config \
    unzip software-properties-common \
    python-pip python3-pip

  # Download source
  mkdir -p $TMP_DIR
  rm -r $TMP_DIR/neovim
  git clone https://github.com/neovim/neovim $TMP_DIR/neovim
  cd $TMP_DIR/neovim
  git pull origin
  rm -r build/

  # Build and install neovim
  make CMAKE_BUILD_TYPE=RelWithDebInfo
  make install
fi

if [ -f '/etc/arch-release' ]; then
  echo '> ArchLinux Detected'
  sudo yaourt neovim-git
  sudo pacman -S python2-neovim python-neovim
fi

echo '> Installing NeoVim Python packages'
pip2 install neovim --upgrade
pip3 install neovim --upgrade

echo '> Installing NeoVim Ruby gem'
gem install neovim
