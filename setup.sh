#!/bin/sh

# xclip
expac "%n" -Q xclip >/dev/null || sudo pacman -S --noconfirm xclip

# network-manager-applet
expac "%n" -Q network-manager-applet >/dev/null || sudo pacman -S --noconfirm network-manager-applet

# pamixer
expac "%n" -Q pamixer >/dev/null || sudo pacman -S --noconfirm pamixer

# setxkbmap
expac "%n" -Q xorg-setxkbmap >/dev/null || sudo pacman -S --noconfirm xorg-setxkbmap

# xsetroot
expac "%n" -Q xorg-xsetroot >/dev/null || sudo pacman -S --noconfirm xorg-xsetroot

# i3lock
expac "%n" -Q i3lock >/dev/null || sudo pacman -S --noconfirm i3lock


# mpd
expac "%n" -Q mpd >/dev/null || sudo pacman -S --noconfirm mpd

[ -d $HOME/.config/mpd ] || mkdir -p $HOME/.config/mpd

ln -sf $(realpath config/mpd/*) $HOME/.config/mpd/


# transmission
expac "%n" -Q transmission-cli >/dev/null || sudo pacman -S --noconfirm transmission-cli

[ -d $HOME/.config/transmission-daemon ] || mkdir -p $HOME/.config/transmission-daemon

ln -sf $(realpath config/transmission-daemon/*) $HOME/.config/transmission-daemon/


# ranger
expac "%n" -Q ranger >/dev/null || sudo pacman -S --noconfirm ranger

[ -d $HOME/.config/ranger ] || mkdir -p $HOME/.config/ranger

ln -sf $(realpath config/ranger/*) $HOME/.config/ranger/


# qutebrowser
expac "%n" -Q qutebrowser >/dev/null || sudo pacman -S --noconfirm qutebrowser

[ -d $HOME/.config/qutebrowser ] || mkdir -p $HOME/.config/qutebrowser

ln -sf $(realpath config/qutebrowser/*) $HOME/.config/qutebrowser/


# dunst
expac "%n" -Q dunst >/dev/null || sudo pacman -S --noconfirm dunst

[ -d $HOME/.config/dunst ] || mkdir -p $HOME/.config/dunst

ln -sf $(realpath config/dunst/*) $HOME/.config/dunst/


# sxhkd
expac "%n" -Q sxhkd >/dev/null || sudo pacman -S --noconfirm sxhkd

[ -d $HOME/.config/sxhkd ] || mkdir -p $HOME/.config/sxhkd

ln -sf $(realpath config/sxhkd/*) $HOME/.config/sxhkd/


# applications (desktop-files)
[ -d $HOME/.local/share/applications ] || mkdir -p $HOME/.local/share/applications

ln -sf $(realpath applications/*) $HOME/.local/share/applications


# share
[ -d $HOME/.local/share ] || mkdir -p $HOME/.local/share

ln -sf $(realpath share/*) $HOME/.local/share


# binaries
[ -d $HOME/.local/bin ] || mkdir -p $HOME/.local/bin

ln -sf $(realpath bin/*) $HOME/.local/bin

# execution permissions for binaries
chmod +x bin/*

# link config files
ln -sf $(realpath config/bashrc) $HOME/.bashrc
ln -sf $(realpath config/vimrc) $HOME/.vimrc
ln -sf $(realpath config/xinitrc) $HOME/.xinitrc


# link inside .config
ln -sf $(realpath config/user-dirs.dirs) $HOME/.config/user-dirs.dirs
ln -sf $(realpath config/mimeapps.list) $HOME/.config/mimeapps.list
