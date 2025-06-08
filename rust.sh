#!/usr/bin/env zsh

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

cargo update
cargo install coreutils

brew install fish-shell/fish-beta-4/fish

cargo install du-dust
brew install dust

brew install nushell
which nu | sudo tee -a /etc/shells
chsh -s $(which nu)

brew install ripgrep
brew install fd
brew install bat

cargo install zoxide --locked
brew install zoxide
eval "$(zoxide init zsh)"
zoxide init fish | source
# alias cd=zoxide

cargo install eza
brew install eza
# alias ls=eza

brew install xh

cargo install --locked zellij
mkdir ~/.config/zellij
zellij setup --dump-config >~/.config/zellij/config.kdl

brew install gitui
brew install starship
eval "$(starship init zsh)"
