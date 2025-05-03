#!/bin/bash

# It is recommended to run this file as sudo :)
# Update: Run this only on FEDORA-42-workstation or server. Do not attempt on other distributions.

# Standard system update
sudo dnf upgrade -y;

# Install necessary packages many of which are required for other softwares (almost irrespective of debian distro at this point)
sudo dnf install \
awscli python3-pip neovim htop cmake meson

# Install rust in system ; make sure to customise installation and do complete install over default
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
source "$HOME/.cargo/env"

# Install useful tools written in rust
cargo install rustscan bottom

# Uninstall any existing package around docker to avoid conflicts while installing docker properly.
sudo dnf remove docker docker-common docker-client docker-client-latest docker-latest \
docker-latest-logrotate docker-logrotate docker-selinux docker-engine-selinux docker-engine

# Setup repo for docker installation
sudo dnf -y install dnf-plugins-core;
sudo dnf-3 config-manager --add-repo https://download.docker.com/linux/fedora/docker-ce.repo

# Install docker engine
sudo dnf -y install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

# Start docker engine
sudo systemctl enable --now docker

# Use below command later to uninstall everything related to docker:
# sudo dnf remove docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin docker-ce-rootless-extras




# Install cutter in linux
# git clone --recurse-submodules https://github.com/rizinorg/cutter
# cd cutter; mkdir build; cd build; cmake ..
# cmake --build .
# cd ../../

# To run cutter:
./cutter/build/cutter

# Only above content as of now.



