#!/bin/bash
which -s brew
if [[ $? != 0 ]] ; then
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi
brew doctor
brew tap homebrew/bundle
brew bundle

# Install RVM
\curl -sSL https://get.rvm.io | bash -s stable

# Install Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Enable PostgreSQL
brew services start postgresql
