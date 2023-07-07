# !/usr/bin/bash

# COLORS
RED=$(tput setaf 1)
GREEN=$(tput setaf 2)
YELLOW=$(tput setaf 3)
BLUE=$(tput setaf 4)
NC=$(tput sgr0)
BOLD=$(tput bold)

function install_brew () {
  if command -v brew >/dev/null; then
    brew --version
  else
    git clone https://github.com/Homebrew/brew ~/.linuxbrew/Homebrew \
      && mkdir ~/.linuxbrew/bin \
      && ln -s ../Homebrew/bin/brew ~/.linuxbrew/bin \
      && eval $(~/.linuxbrew/bin/brew shellenv) \
      && brew --version
  fi

}

# MAIN
function main() {
  install_brew
}

main
