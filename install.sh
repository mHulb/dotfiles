#!/bin/bash

# Update package list and install packages (excluding neovim)
sudo apt update
sudo apt install -y fish tmux git stow

# Install latest neovim from GitHub releases
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.tar.gz
sudo rm -rf /opt/nvim
sudo tar -C /opt -xzf nvim-linux-x86_64.tar.gz
rm nvim-linux-x86_64.tar.gz

# Stow configurations
cd ~/dotfiles
stow fish nvim tmux

# Set fish as default shell
sudo chsh -s $(which fish) $USER

echo "Setup complete! Log out and back in to use fish shell."
