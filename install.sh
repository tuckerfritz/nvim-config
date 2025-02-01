#!/usr/bin/env bash

mkdir -p ~/.config/nvim
rsync -av --exclude='.git' --exclude='install.sh' . ~/.config/nvim
