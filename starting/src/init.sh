# !/usr/bin/bash
source modules/homebrew.sh

# COLORS
RED=$(tput setaf 1)
GREEN=$(tput setaf 2)
YELLOW=$(tput setaf 3)
BLUE=$(tput setaf 4)
NC=$(tput sgr0)
BOLD=$(tput bold)


# MAIN
function main() {
  init_homebrew 
}

main
