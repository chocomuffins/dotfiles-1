#!/usr/bin/env zsh

xcode-select --install

echo "Complete the installation of Xcode Command Line Tools before proceeding."
echo "Press enter to continue..."
read

# Set scroll as traditional instead of natural
defaults write NSGlobalDomain com.apple.swipescrolldirection -bool false
killall Finder

# Set location for screenshots
mkdir "${HOME}/Desktop/Screenshots"
defaults write com.apple.screencapture location "${HOME}/Desktop/Screenshots"
killall SystemUIServer

# Add Bluetooth to Menu Bar for battery percentages
defaults write com.apple.controlcenter "NSStatusItem Visible Bluetooth" -bool true
killall ControlCenter

# Get the absolute path to the image
IMAGE_PATH="${HOME}/dotfiles/settings/Jason_and_Lucia_01_ultrawide.jpg"

# AppleScript command to set the desktop background
osascript <<EOF
tell application "System Events"
    set desktopCount to count of desktops
    repeat with desktopNumber from 1 to desktopCount
        tell desktop desktopNumber
            set picture to "$IMAGE_PATH"
        end tell
    end repeat
end tell
EOF
# osascript -e "tell application \"System Events\" to tell every desktop to set picture to \"/path/to/your/image.jpg\" as POSIX file"
# osascript -e "tell application \"System Events\" to tell every desktop to set picture to \"/path/to/your/image.jpg\" as POSIX file"
# osascript -e 'tell application "Finder" to set desktop picture to POSIX file "/path/to/your/image.jpg"'
