#!/bin/sh

# Homebrew Script for OSX
# To execute: save and `chmod +x ./brew-install-script.sh` then `./brew-install-script.sh`

echo "Installing brew..."
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "Installing brew cask..."
brew tap homebrew/cask
brew tap homebrew/cask-drivers
brew tap homebrew/cask-fonts  
brew tap homebrew/cask-versions

# Programming Languages
echo "Installing programming languages and frameworks..."
brew install deno
brew install nvm
brew install php
brew install python
brew install openjdk@11

# Dev Tools
echo "Installing development tools..."
brew install android-platform-tools
brew install composer
brew install docker
brew install fastlane
brew install gh
brew install git
brew install gradle
brew install jesseduffield/lazygit/lazygit
brew install mysql@5.7
brew install nvim
brew install pnpm
brew install pyenv
brew install rbenv
brew install vim
brew install watchman
brew install yarn
brew install --cask adobe-creative-cloud
brew install --cask arduino
brew install --cask flipper
brew install --cask jetbrains-toolbox
brew install --cask reactotron
brew install --cask sourcetree
brew install --cask virtualbox
brew install --cask visual-studio-code
brew install --cask zulu11

# Terminal and Utils
echo "Installing terminal tools and binaries..."
brew install avrdude
brew install coreutils
brew install cowsay
brew install glow
brew install gnupg
brew install htop
brew install lolcat
brew install mas
brew install rar
brew install reattach-to-user-namespace
brew install ripgrep
brew install stow
brew install svn
brew install tmux
brew install tree
brew install wimlib
brew install zsh-completions
brew install zsh-syntax-highlighting
brew install --cask alacritty
brew install --cask iterm2
brew install --cask kitty

# Web Tools
echo "Installing web tools..."
brew install httpie
brew install --cask firefox
brew install --cask google-chrome
brew install --cask google-chrome-canary
brew install --cask ngrok
brew install --cask opera-gx
brew install --cask postman
brew install --cask tor-browser

# Design Tools
echo "Installing design tools..."
brew install --cask figma
brew install --cask zeplin

# File Storage
echo "Installing file storage tools..."
brew install --cask dropbox

# Communication Apps
echo "Installing communication apps..."
brew install --cask discord
brew install --cask microsoft-teams
brew install --cask slack

# Fonts
echo "Installing fonts..."
brew install font-jetbrains-mono-nerd-font
brew install --cask font-hack-nerd-font
brew install --cask font-iosevka
brew install --cask font-jetbrains-mono
brew install --cask font-juliamono
brew install --cask font-source-code-pro


# Keyboard stuff
echo "Installing keyboard software..."
brew install qmk/qmk/qmk
brew install --cask karabiner-elements
brew install --cask qmk-toolbox
brew install --cask via
brew install --cask vial

# Productivity Apps
echo "Installing productivity apps and tools..."
brew install --cask adobe-acrobat-pro
brew install --cask alfred
brew install --cask alt-tab
brew install --cask cheatsheet
brew install --cask rectangle
brew install --cask todoist
brew install --cask toggl-track

# Other
echo "Installing everything else..."
brew install --cask authy
brew install --cask balance-lock # Because Apple is a piece of shit
brew install --cask balenaetcher
brew install --cask f-bar
brew install --cask intel-power-gadget
brew install --cask kicad
brew install --cask lastpass
brew install --cask raspberry-pi-imager
brew install --cask setapp
brew install --cask spotify
brew install --cask ultimaker-cura
