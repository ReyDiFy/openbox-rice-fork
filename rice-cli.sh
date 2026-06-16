#! /usr/bin/sh
sudo pacman --noconfirm -Syu base-devel git
# change the following line to your username
GH_USERNAME=ReyDiFy
# change the following line to your github repository
GH_REPO=openbox-rice-fork
# checkout configurations
git init
git remote add origin https://github.com/$GH_USERNAME/$GH_REPO
git fetch
git reset origin/main
git checkout -t origin/main
git submodule update --init --recursive
# install yay
git clone https://aur.archlinux.org/yay-bin.git
cd yay && makepkg -si && cd -
# install packages
FILE_MANAGER="yazi exa"
EDITOR="helix git-delta"
DEV="rustup zig zls bun"
yay -S --nocleanmenu --noeditmenu --nodiffmenu --noupgrademenu $FILE_MANAGER $EDITOR $DEV
