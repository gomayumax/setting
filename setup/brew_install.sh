#!/bin/bash -eu

brew update
brew upgrade

brew install node@12
brew install nkf
brew install wget
brew install elixir
brew install go

brew cask install hyper
brew cask install docker
brew cask install google-chrome
brew cask install karabiner-elements
brew cask install phpstorm

brew install mas

mas install 409183694   # Keynote
mas install 1333542190  # 1Password 7
mas install 803453959   # Slack
mas install 407963104   # Pixelmator
mas install 1024640650  # CotEditor
mas install 405399194   # Kindle
