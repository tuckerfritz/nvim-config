#!/usr/bin/env bash


mkdir -p ~/.config/nvim
rm -rf ~/.config/nvim/*
rsync -av --exclude='.git' --exclude='install.sh' . ~/.config/nvim
