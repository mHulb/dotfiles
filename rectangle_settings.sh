#!/bin/bash
# Rectangle window management settings
# Run this script to configure Rectangle preferences
# Restart Rectangle after running for changes to take effect

echo "Configuring Rectangle settings..."

# Screen edge gaps (applied to maximize action)
defaults write com.knollsoft.Rectangle screenEdgeGapTop -int 0
defaults write com.knollsoft.Rectangle screenEdgeGapBottom -int 60
defaults write com.knollsoft.Rectangle screenEdgeGapLeft -int 60
defaults write com.knollsoft.Rectangle screenEdgeGapRight -int 60

# Make almost-maximize truly fullscreen (100% width and height)
defaults write com.knollsoft.Rectangle almostMaximizeHeight -float 1.0
defaults write com.knollsoft.Rectangle almostMaximizeWidth -float 1.0

# Optional: Apply gaps to main screen only (useful for multi-display setups)
# defaults write com.knollsoft.Rectangle screenEdgeGapsOnMainScreenOnly -bool true

# Optional: Gap for notch screens
# defaults write com.knollsoft.Rectangle screenEdgeGapTopNotch -int 5

echo "Rectangle settings configured successfully!"
echo "Please restart Rectangle for changes to take effect."
