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

function install_brew_packages () {
  echo 'Installing dependencies'
}

function init_homebrew () {
  install_brew
  install_brew_packages
}

export -f init_homebrew
