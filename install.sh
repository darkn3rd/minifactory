#!/bin/sh
# Install Script
#  Joaquin Menchaca 2017
#
# Install Script for Installing Vagrant, Virtualbox, Ansible

###########################################
# Main - choose appropriate system for installation on host
###########################################
main() {
  if [[ $(uname -s) == "Darwin" ]]; then
    macosx_installation
  elif [[ $(uname -s) == "Linux"  ]]; then
    linux_installation
  fi
}

###########################################
# Generic Linux Installation - routes to appropriate distro
###########################################
linux_installation() {
  if uname -r | grep -qi "Arch"; then
    arch_installation
  fi
}


###########################################
# Arch Linux Installation Using pacman
# NOTE: Run pacman -Syu to update first, especially 'archlinux-keyring'
###########################################
arch_installation() {
  # Ansible Installation
  # NOTE: Arch Linux (Apricity) points shebang to Python2 as Python3 default
  #       To avoid problems, use ansible package
  # Installs Ansible, Virtualbox, and Vagrant using pacman
  sudo pacman -S ansible

  # VirtualBox Installation
  # NOTE: Secure Boot BIOS feature must be turned OFF for hypervisor to work
  # NOTE: Virtualization chipset features must be turned ON for hypervisor
  sudo pacman -S virtualbox-host-modules-arch
  sudo pacman -S virtualbox
  sudo modprobe vboxdrv
  # Post install
  sudo usermod -aG vboxusers ${USER}

  # Vagrant Installation
  sudo pacman -S vagrant
}


###########################################
# Mac OS X Installation -
#  detect and install home brew/cask/bundle
#  install python2, virtualbox, vagrant w/ homebrew
#  install ansible w/ python2 pip
###########################################
macosx_installation() {
  command -v brew 2>&1 > /dev/null || { install homebrew ; }
  install_brew_packages
  install_ansible
}

###########################################
# Install Homebrew on Mac OS X
###########################################
install_homebrew() {
  BREWRL='https://raw.githubusercontent.com/Homebrew/install/master/install'
  /usr/bin/ruby -e "$(curl -fsSL ${BREWRL})"
}

###########################################
# Installs Brew packages using Brew Bundle
###########################################
install_brew_packages() {
  brew update
  brew tap Homebrew/bundle
  brew bundle --verbose
  brew linkapps python
}

###########################################
# Installs Ansible using Pip (pip should default to pip2 environment)
###########################################
install_ansible() {
  pip install --upgrade pip setuptools
  sudo -H pip install ansible
}

###########################################
# Main Section of script simply calls main()
###########################################
main
