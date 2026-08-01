#!/usr/bin/env zsh

# Update Homebrew and Upgrade any already-installed formulae
brew update
brew upgrade
brew upgrade --cask
brew cleanup

pip3 install --upgrade pip
pip3 install numpy
pip3 install scipy
pip3 install matplotlib
pip3 install pandas
pip3 install scikit-learn
pip3 install pillow

# Define an array of packages to install using Homebrew.
# packages=(
#     "coreutils"
#     "python"
#     "tcl-tk"
#     "python-tk"
#     "bash"
#     "bash-completion2"
#     "zsh"
#     "git"
#     "tree"
#     "node"
#     "uv"
#     "pipx"
#     "gh"
#     "ffmpeg"
#     "exiftools"
#     "jupyter"
#     "vim --with-override-system-vi"
# )

# Loop over the array to install each application.
# for package in "${packages[@]}"; do
#     if brew list --formula | grep -q "^$package\$"; then
#         echo "$package is already installed. Skipping..."
#     else
#         echo "Installing $package..."
#         brew install "$package"
#     fi
# done

# Update and clean up again for safe measure
brew update
brew upgrade
brew upgrade --cask
brew cleanup
