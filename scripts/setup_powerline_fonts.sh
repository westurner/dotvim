#!/bin/sh
# Install the Powerline fonts

if [ -n "$(command -v apt-get)" ]; then
    APTGET=1
fi
if [ -n "$(command -v dnf)" ]; then
    DNF=1
fi
if [ -d "${HOME}/Library/Fonts" ]; then
    MACOS=true
fi

mkdir -p ~/.fonts
if [ ! -d "powerline-fonts" ]; then
    git clone https://github.com/powerline/fonts powerline-fonts
fi
cd powerline-fonts
if [ -n "${MACOS}" ]; then
    find . -name '*.ttf' -exec cp "{}" ~/Library/Fonts \;
    find . -name '*.otf' -exec cp "{}" ~/Library/Fonts \;
    open "/Applications/Font Book.app"

elif [ -n "${APTGET}" ]; then
    sudo apt-get install -y fonts-powerline

elif [ -n "${DNF}" ]; then
    sudo dnf install -y powerline-fonts

else
    find . -name '*.ttf' -exec cp "{}" ~/.fonts \;
    find . -name '*.otf' -exec cp "{}" ~/.fonts \;
    command -v fc-cache || \
        echo 'fc-cache is not on $PATH; sudo dnf install -y fontconfig'
    fc-cache -vf ~/.fonts
fi
