#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Check for Homebrew,
# Install if we don't have it
if test ! $(which brew); then
  echo "Installing homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade --all

# Install GNU core utilities (those that come with OS X are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
# sudo ln -s /usr/local/bin/gsha256sum /usr/local/bin/sha256sum

# Install some other useful utilities like `sponge`.
# brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
 brew install gnu-sed #--with-default-names
# Install Bash 4.
# brew install bash
# brew tap homebrew/versions
# brew install bash-completion2
# We installed the new shell, now we have to activate it
# echo "Adding the newly installed shell to the list of allowed shells"
# Prompts for password
# sudo bash -c 'echo /usr/local/bin/bash >> /etc/shells'
# Change to the new shell, prompts for password
# chsh -s /usr/local/bin/bash

# Install `wget` with IRI support.
# brew install wget --with-iri

# Install RingoJS and Narwhal.
# Note that the order in which these are installed is important;
# see http://git.io/brew-narwhal-ringo.
# brew install ringojs
# brew install narwhal

# Install Python
# brew install python
# brew install python3

# Install ruby-build and rbenv
# brew install ruby-build
# brew install rbenv
# LINE='eval "$(rbenv init -)"'
# grep -q "$LINE" ~/.extra || echo "$LINE" >> ~/.extra

# Install more recent versions of some OS X tools.
brew install vim #--override-system-vi
# brew install homebrew/dupes/grep
# brew install homebrew/dupes/openssh
# brew install homebrew/dupes/screen
# brew install homebrew/php/php55 --with-gmp

# Install font tools.
# brew tap bramstein/webfonttools
# brew install sfnt2woff
# brew install sfnt2woff-zopfli
# brew install woff2

# Install some CTF tools; see https://github.com/ctfs/write-ups.
# brew install aircrack-ng
# brew install bfg
# brew install binutils
# brew install binwalk
# brew install cifer
# brew install dex2jar
# brew install dns2tcp
# brew install fcrackzip
# brew install foremost
# brew install hashpump
# brew install hydra
# brew install john
# brew install knock
# brew install netpbm
# brew install nmap
# brew install pngcheck
# brew install socat
# brew install sqlmap
# brew install tcpflow
# brew install tcpreplay
# brew install tcptrace
# brew install ucspi-tcp # `tcpserver` etc.
# brew install homebrew/x11/xpdf
# brew install xz

# Install other useful binaries.
# brew install ack
# brew install dark-mode
#brew install exiv2
brew install git
# brew install git-lfs
# brew install git-flow
brew install git-extras
# brew install hub
# brew install imagemagick --with-webp
brew install lua
brew install ripgrep
brew install mas
# brew install lynx
# brew install p7zip
# brew install pigz
# brew install pv
# brew install rename
# brew install rhino
brew install speedtest_cli
brew install ssh-copy-id
brew install tree
# brew install webkit2png
# brew install zopfli
# brew install pkg-config libffi
# brew install pandoc

# Lxml and Libxslt
# brew install libxml2
# brew install libxslt
# brew link libxml2 --force
# brew link libxslt --force

# Install Heroku
# brew install heroku-toolbelt
# heroku update

# Core casks
# brew cask install --appdir="/Applications" alfred
# brew cask install --appdir="~/Applications" iterm2
# brew cask install --appdir="~/Applications" java
# brew cask install --appdir="~/Applications" xquartz
#
# # Development tool casks
# brew cask install --appdir="/Applications" sublime-text
# brew cask install --appdir="/Applications" atom
# brew cask install --appdir="/Applications" virtualbox
# brew cask install --appdir="/Applications" vagrant
# brew cask install --appdir="/Applications" macdown
#
# # Misc casks
# brew cask install --appdir="/Applications" google-chrome
# brew cask install --appdir="/Applications" firefox
# brew cask install --appdir="/Applications" skype
# brew cask install --appdir="/Applications" slack
# brew cask install --appdir="/Applications" dropbox
# brew cask install --appdir="/Applications" evernote
# brew cask install --appdir="/Applications" 1password
#brew cask install --appdir="/Applications" gimp
#brew cask install --appdir="/Applications" inkscape

#Remove comment to install LaTeX distribution MacTeX
#brew cask install --appdir="/Applications" mactex
brew tap caskroom/versions
brew cask install accessmenubarapps
brew cask install alfred
brew cask install appcleaner
brew cask install bettertouchtool
brew cask install betterzip
brew cask install caffeine
brew cask install controlplane
brew cask install copyq
brew cask install dash
brew cask install day-o
brew cask install diskwave
brew cask install dterm
brew cask install firefox-developer-edition
brew cask install flash
brew cask install google-chrome
brew cask install hammerspoon
brew cask install iterm2
brew cask install karabiner-elements
brew cask install key-codes
brew cask install keyboardcleantool
brew cask install libreoffice
brew cask install loading
brew cask install macs-fan-control
brew cask install macvim
brew cask install marp
brew cask install microsoft-office-ja
brew cask install mysqlworkbench
brew cask install postman
brew cask install qlcolorcode
brew cask install qlimagesize
brew cask install qlmarkdown
brew cask install qlstephen
brew cask install quicklook-csv
brew cask install quicklook-json
brew cask install quicksilver
brew cask install rambox
brew cask install shortcat
brew cask install the-unarchiver
brew cask install vagrant
brew cask install vagrant-manager
brew cask install virtualbox
brew cask install virtualbox-extension-pack
brew cask install vivaldi

brew tap caskroom/fonts
brew cask install font-camingocode
brew cask install font-ricty-diminished

mas signin
mas install 1059074180 # WeatherBug
mas install 986304488 # Kiwi for Gmail
# Install Docker, which requires virtualbox
# brew install docker
# brew install boot2docker

# Install developer friendly quick look plugins; see https://github.com/sindresorhus/quick-look-plugins
# brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv betterzipql qlimagesize webpquicklook suspicious-package

# Remove outdated versions from the cellar.
brew cleanup
