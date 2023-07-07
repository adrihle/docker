# !/usr/bin/bash

# COLORS
RED=$(tput setaf 1)
GREEN=$(tput setaf 2)
YELLOW=$(tput setaf 3)
BLUE=$(tput setaf 4)
NC=$(tput sgr0)
BOLD=$(tput bold)

function install_brew () {
  echo "Installing homebrew"
  if command -v brew >/dev/null; then
    echo "Already installed"
    brew --version
  else
    git clone https://github.com/Homebrew/brew ~/.linuxbrew/Homebrew \
      && mkdir ~/.linuxbrew/bin \
      && ln -s ../Homebrew/bin/brew ~/.linuxbrew/bin \
      && brew --version
  fi
  echo "Finished homebrew installation"
}

# MAIN
function main() {
  install_brew
}

main
