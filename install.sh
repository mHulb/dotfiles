#!/bin/bash

# Update package list and install packages (excluding neovim)
sudo apt update
sudo apt install -y fish tmux git stow curl build-essential ripgrep fzf

# Install latest neovim from GitHub releases
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.tar.gz
sudo rm -rf /opt/nvim
sudo tar -C /opt -xzf nvim-linux-x86_64.tar.gz
rm nvim-linux-x86_64.tar.gz

# Install lazygit
LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | \grep -Po '"tag_name": *"v\K[^"]*')
curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/download/v${LAZYGIT_VERSION}/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
tar xf lazygit.tar.gz lazygit
sudo install lazygit -D -t /usr/local/bin/

# Stow configurations
cd ~/dotfiles
stow fish nvim tmux

# Set fish as default shell
sudo chsh -s $(which fish) $USER

echo "Setup complete! Log out and back in to use fish shell."
