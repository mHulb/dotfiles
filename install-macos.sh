#!/bin/bash

# Install Homebrew if not already installed
if ! command -v brew &>/dev/null; then
  echo "Installing Homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

  # Add Homebrew to PATH for THIS script session
  if [[ $(uname -m) == 'arm64' ]]; then
    # Apple Silicon
    eval "$(/opt/homebrew/bin/brew shellenv)"
  else
    # Intel Mac
    eval "$(/usr/local/bin/brew shellenv)"
  fi
fi

# Update Homebrew and install packages
brew update
brew install fish tmux git stow curl ripgrep fzf neovim lazygit

# Get the actual directory where this script is located
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Stow configurations (from current directory)
cd "$SCRIPT_DIR"
stow fish nvim tmux karabiner

# Set fish as default shell
FISH_PATH="$(brew --prefix)/bin/fish"

# Add fish to /etc/shells if not already there
if ! grep -q "$FISH_PATH" /etc/shells; then
  echo "Adding fish to /etc/shells..."
  echo "$FISH_PATH" | sudo tee -a /etc/shells
fi

# Change default shell
echo "Changing default shell to fish..."
chsh -s "$FISH_PATH"

echo ""
echo "Setup complete! Log out and back in to use fish shell."
echo "Fish is installed at: $FISH_PATH"
