# !/usr/bin/bash

# COLORS
RED=$(tput setaf 1)
GREEN=$(tput setaf 2)
YELLOW=$(tput setaf 3)
BLUE=$(tput setaf 4)
NC=$(tput sgr0)
BOLD=$(tput bold)

# MAIN
function main() {
  brewVersion=$(brew --version | awk '{print $2}')
  echo "Brew version: $brewVersion"
}

main
