#!/bin/sh

echo 'export ZDOTDIR=$HOME/.config/zsh' > ~/.zshenv
mkdir -p ~/.config/zsh
git clone https://github.com/zmtq05/zsh.git $ZDOTDIR
git clone --depth=1 https://github.com/mattmc3/antidote.git $ZDOTDIR/.antidote
