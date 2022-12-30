#!/bin/bash

echo 'Cleaning disk ...'

# Remove unused packages (orphans)
sudo pacman -Rns $(pacman -Qtdq)

# Remove cache
sudo pacman -Sc

# Clean cache in home directory
rm -rf ~/.cache/*

echo 'Done'
