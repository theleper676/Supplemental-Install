#!/bin/bash



echo "Starting Wix Video Essential Install"


#check if brew is installed
if test ! $(which brew); then
    echo "Installing homebrew..."
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

echo "Updating Brew"
#update brew
brew update

#install ffmpeg
if test ! $(which ffmpeg); then
    echo "Installing ffmpeg..."
    brew install ffmpeg
fi

#upgrade ffmpeg anyway 
if test ! $(which ffmpeg); then
    echo "Installing ffmpeg"
    brew install ffmpeg
fi

#installing gstreamer-essentinals

GSTREAMER=(
    gst-libav
    gst-plugins-bad
    gst-plugins-base
    gst-plugins-good
    gst-plugins-ugly
    gstreamer
)

echo "Installing Gstreamer essentials..."
brew install ${GSTREAMER[@]}

#installing cask and vlc/handbrake
CASKS=(
    vlc
    handbrake
)

echo "Installing cask apps..."
brew cask install ${CASKS[@]}

echo "Done!"
