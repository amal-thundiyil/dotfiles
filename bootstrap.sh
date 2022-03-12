#!/usr/bin/env bash

# Homebrew
echo "Adding Homebrew"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
chmod +x ./brew.sh && ./brew.sh

# Oh-my-zsh
echo "Adding zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
rm -rf ~/.zshrc

# Alacritty
echo "Adding Alacritty"
git clone https://github.com/alacritty/alacritty.git alacritty_temp
cd alacritty_temp
sudo tic -xe alacritty,alacritty-direct extra/alacritty.info
cd .. && rm -rf alacritty_temp

# Neovim
if ! [ -x "$(command -v nvim)" ]; then
    #install nvim
fi

echo "Creating the symlinks..."
stow */

# gpg for git
echo "Adding gpg..."
echo "pinentry-program /usr/local/bin/pinentry-mac" >> ~/.gnupg/gpg-agent.conf
killall gpg-agent
echo "test" | gpg --clearsign