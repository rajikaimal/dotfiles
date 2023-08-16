#!/usr/bin/env bash
# Install command-line tools using Homebrew.

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Save Homebrew’s installed location.
BREW_PREFIX=$(brew --prefix)

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
# Install some other useful utilities like `sponge`.
brew install moreutils
brew install nvim
brew install findutils
brew install act
brew install jpeg
brew install libpng
brew install libtiff
brew install webp
brew install autossh
brew install aws-elasticbeanstalk
brew install python@3.9
brew install glib
brew install pkg-config
brew install direnv
brew install gcc
brew install folly
brew install fzf
brew install gobject-introspection
brew install gtk-doc
brew install harfbuzz
brew install hdf5
brew install htop
brew install libheif
brew install libomp
brew install imagemagick
brew install jpeg-turbo
brew install jq
brew install libmatio
brew install llvm
brew install nghttp2
brew install node
brew install deno
brew install openblas
brew install qt
brew install poppler
brew install pyenv
brew install pyenv-virtualenv
brew install telnet
brew install vips
brew install watchman
brew install wget
brew install zlib
brew install zsh-autosuggestions
brew install dopplerhq/cli/doppler
brew install cask docker
brew install k9s
brew install tmux

