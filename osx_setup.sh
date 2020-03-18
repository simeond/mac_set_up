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

# Brew taps
brew install caskroom/cask/brew-cask
brew tap caskroom/versions
brew tap caskroom/fonts

brew cask install  font-anonymous-pro
brew cask install  font-dejavu-sans-mono-for-powerline
brew cask install  font-droid-sans
brew cask install  font-droid-sans-mono font-droid-sans-mono-for-powerline
brew cask install  font-meslo-lg font-input
brew cask install  font-inconsolata font-inconsolata-for-powerline
brew cask install  font-liberation-mono font-liberation-mono-for-powerline
brew cask install  font-liberation-sans
brew cask install  font-meslo-lg
brew cask install  font-nixie-one
brew cask install  font-office-code-pro
brew cask install  font-pt-mono font-woff2
brew cask install  font-raleway font-roboto
brew cask install  font-source-code-pro font-source-code-pro-for-powerline
brew cask install  font-source-sans-pro
brew cask install  font-ubuntu font-ubuntu-mono-powerline
brew cask install  font-fontawesome
brew cask install  font-roboto
brew cask install  font-roboto-condensed
brew cask install  font-roboto-mono
brew cask install  font-hack-nerd-font


# Install other useful binaries.
brew install git
brew install tree
brew install pandoc
brew insall gmp
brew install node
 


# Core casks
brew cask install --appdir="/Applications" alfred
brew cask install --appdir="~/Applications" iterm2
brew cask install --appdir="~/Applications" java
brew cask install --appdir="~/Applications" xquartz

# Development tool casks
brew cask install --appdir="/Applications" sublime-text
brew cask install --appdir="/Applications" atom

# Misc casks
brew cask install --appdir="/Applications" google-chrome
brew cask install --appdir="/Applications" google-drive
brew cask install --appdir="/Applications" google-hangouts
brew cask install --appdir="/Applications" skype
brew cask install --appdir="/Applications" slack
brew cask install --appdir="/Applications" dropbox
brew cask install --appdir="/Applications" evernote
brew cask install --appdir="/Applications" 1password
brew cask install --appdir="/Applications" dropzone
brew cask install --appdir="/Applications" bartender
brew cask install --appdir="/Applications" hazel
brew cask install --appdir="/Applications" mactex
brew cask install --appdir="/Applications" vlc
brew cask install --appdir="/Applications" spotify
brew cask install --appdir="/Applications" qfinder-pro
brew cask install --appdir="/Applications" fantastical
brew cask install --appdir="/Applications" omnigraffle
brew cask install --appdir="/Applications" adobe-reader
brew cask install --appdir="/Applications" sourcetree
brew cask install --appdir="/Applications" phantomjs

# DATA & ANALYTIC TOOLS

# SQL set up
brew install unixodbc
brew install freetds --with-unixodbc
brew install psqlodbc
brew install mysql
brew install sqliteodbc
brew install pandoc
brew install phantomjs

# Install Python
# Use Anaconda

# Install R
# Use CRAN & RStudio

# Install Stan

# brew imagemagick
brew cask install inkscape
brew install librsvg
brew install imagemagick --with-librsvg
brew install ffmpeg


# Install developer friendly quick look plugins; see https://github.com/sindresorhus/quick-look-plugins
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv betterzipql qlimagesize webpquicklook suspicious-package

# Remove outdated versions from the cellar.
brew cleanup
