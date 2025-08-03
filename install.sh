#!/bin/bash

# Update package list and install packages
sudo apt update
sudo apt install -y neovim fish tmux git stow

# Stow configurations (assuming dotfiles are already in ~/dotfiles)
stow fish nvim tmux

# Set fish as default shell
sudo chsh -s $(which fish) $USER

echo "Setup complete! Log out and back in to use fish shell."
