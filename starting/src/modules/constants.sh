# !/usr/bin/bash

# COLORS
RED=$(tput setaf 1)
GREEN=$(tput setaf 2)
YELLOW=$(tput setaf 3)
BLUE=$(tput setaf 4)
NC=$(tput sgr0)
BOLD=$(tput bold)

# VARIABLES
declare -r GIT_BRANCH="${GIT_BRANCH:-"master"}"
declare -r GIT_REMOTE="${GIT_REMOTE:-"ecosse3/nvim.git"}"
declare -r NVIM_DIR="${NVIM_DIR:-"$(which nvim)"}"
declare -r INSTALL_PREFIX="${INSTALL_PREFIX:-"$HOME/.local"}"
declare -r XDG_DATA_HOME="${XDG_DATA_HOME:-"$HOME/.local/share"}"
declare -r XDG_CONFIG_HOME="${XDG_CONFIG_HOME:-"$HOME/.config"}"
declare -r RUNTIME_DIR="${RUNTIME_DIR:-"$XDG_DATA_HOME/nvim"}"
declare -r CONFIG_DIR="${CONFIG_DIR:-"$XDG_CONFIG_HOME/nvim"}"

