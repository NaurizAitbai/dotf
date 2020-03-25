#!/bin/sh

# network-manager-applet
expac "%n" -S network-manager-applet >/dev/null || sudo pacman -S --noconfirm network-manager-applet

# pamixer
expac "%n" -S pamixer >/dev/null || sudo pacman -S --noconfirm pamixer

# setxkbmap
expac "%n" -S xorg-setxkbmap >/dev/null || sudo pacman -S --noconfirm xorg-setxkbmap

# xsetroot
expac "%n" -S xorg-xsetroot >/dev/null || sudo pacman -S --noconfirm xorg-xsetroot

# i3lock
expac "%n" -S i3lock >/dev/null || sudo pacman -S --noconfirm i3lock


# ranger
expac "%n" -S ranger >/dev/null || sudo pacman -S --noconfirm ranger

[ -d $HOME/.config/ranger ] || mkdir -p $HOME/.config/ranger

ln -sf $(realpath config/ranger/*) $HOME/.config/ranger/


# dunst
expac "%n" -S dunst >/dev/null || sudo pacman -S --noconfirm dunst

[ -d $HOME/.config/dunst ] || mkdir -p $HOME/.config/dunst

ln -sf $(realpath config/dunst/*) $HOME/.config/dunst/


# sxhkd
expac "%n" -S sxhkd >/dev/null || sudo pacman -S --noconfirm sxhkd

[ -d $HOME/.config/sxhkd ] || mkdir -p $HOME/.config/sxhkd

ln -sf $(realpath config/sxhkd/*) $HOME/.config/sxhkd/


# binaries
[ -d $HOME/.local/bin ] || mkdir -p $HOME/.local/bin

ln -sf $(realpath bin/*) $HOME/.local/bin


# link config files
ln -sf $(realpath config/bashrc) $HOME/.bashrc
ln -sf $(realpath config/vimrc) $HOME/.vimrc
ln -sf $(realpath config/xinitrc) $HOME/.xinitrc


# link user-dirs
ln -sf $(realpath config/user-dirs.dirs) $HOME/.config/user-dirs.dirs
