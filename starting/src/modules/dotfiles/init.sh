#!/usr/bin/bash

function init_dotfiles () {
  local LOG_TAG="${BLUE}[DOTFILES]${NC}"
  echo "$LOG_TAG Initializing"
  if ! git clone --branch "$GIT_BRANCH" \
    --depth 1 "https://github.com/${GIT_REMOTE}" "$CONFIG_DIR"; then
    echo "Failed to clone repository. Installation failed."
    exit 1
  fi
  echo -e "${GREEN}${BOLD}Done${NC}"
  msg "${BOLD}Moving to Ecovim directory... ${NC}"
  cd $CONFIG_DIR
  echo "${GREEN}${BOLD}Done${NC}"
}

export -f init_dotfiles
