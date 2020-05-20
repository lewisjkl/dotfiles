#!/bin/bash

set -e

yellow() {
  tput setaf 3
  echo "$*"
  tput sgr0
}

info(){
  echo
  yellow "$@"
}

info "Checking for command-line tools..."
if ! command -v xcodebuild > /dev/null; then
  xcode-select --install
fi

info "Installing Homebrew if not already installed..."
if ! command -v brew > /dev/null; then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

info "Installing Homebrew packages..."
brew bundle

info "Syncing dotfiles to your Home directory..."
RCRC=rcrc rcup -d .

info "Setting new defaults for MacOS..."
chmod +x macos.sh
sh ./macos.sh


