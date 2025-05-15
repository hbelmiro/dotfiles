#!/usr/bin/env bash

set -e

ln -sf ~/dotfiles/.zshrc ~/.zshrc

ln -sf ~/dotfiles/.globalgitignore ~/.gitignore
git config --global core.excludesFile '~/.gitignore'
