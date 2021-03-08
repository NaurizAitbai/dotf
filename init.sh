#!/bin/sh

current_location=$(pwd)

# yay
rm -rf /tmp/yay
pacman -Qi yay >/dev/null 2>&1 || { git clone https://aur.archlinux.org/yay.git /tmp/yay; cd /tmp/yay && makepkg -si --noconfirm; }
cd $current_location

# libxft-bgra
gpg --keyserver pool.sks-keyservers.net --recv-keys 4A193C06D35E7C670FA4EF0BA2FB9E081F2D130E
yay -Qi libxft-bgra >/dev/null 2>&1 || yes y|yay -S libxft-bgra

# xorg-server
pacman -Qi xorg-server >/dev/null 2>&1 || sudo pacman -S --noconfirm xorg-server

# xorg-xinit
pacman -Qi xorg-xinit >/dev/null 2>&1 || sudo pacman -S --noconfirm xorg-xinit

# xorg-xrandr
pacman -Qi xorg-xrandr >/dev/null 2>&1 || sudo pacman -S --noconfirm xorg-xrandr

# xorg-xsetroot
pacman -Qi xorg-xsetroot >/dev/null 2>&1 || sudo pacman -S --noconfirm xorg-xsetroot

# nvidia
pacman -Qi nvidia >/dev/null 2>&1 || sudo pacman -S --noconfirm nvidia
sudo nvidia-xconfig

# pulseaudio
pacman -Qi pulseaudio >/dev/null 2>&1 || sudo pacman -S --noconfirm pulseaudio
systemctl --user --now enable pulseaudio

# ntfs-3g
pacman -Qi ntfs-3g >/dev/null 2>&1 || sudo pacman -S --noconfirm ntfs-3g

# noto-fonts
pacman -Qi noto-fonts >/dev/null 2>&1 || sudo pacman -S --noconfirm noto-fonts
pacman -Qi noto-fonts-cjk >/dev/null 2>&1 || sudo pacman -S --noconfirm noto-fonts-cjk
pacman -Qi noto-fonts-emoji >/dev/null 2>&1 || sudo pacman -S --noconfirm noto-fonts-emoji
pacman -Qi noto-fonts-extra >/dev/null 2>&1 || sudo pacman -S --noconfirm noto-fonts-extra

# ttf-iosevka
yay -Qi ttf-iosevka >/dev/null 2>&1 || yay -S --noconfirm ttf-iosevka

# font-config
[ -d $HOME/.config/fontconfig ] || mkdir -p $HOME/.config/fontconfig
ln -sf $(realpath config/fontconfig/fonts.conf) $HOME/.config/fontconfig/

# libnotify
pacman -Qi libnotify >/dev/null 2>&1 || sudo pacman -S --noconfirm libnotify

# libxinerama
pacman -Qi libxinerama >/dev/null 2>&1 || sudo pacman -S --noconfirm libxinerama

# cronie
pacman -Qi cronie >/dev/null 2>&1 || sudo pacman -S --noconfirm cronie
sudo systemctl --now enable cronie

# xdg-user-dirs
pacman -Qi xdg-user-dirs >/dev/null 2>&1 || sudo pacman -S --noconfirm xdg-user-dirs
ln -sf $(realpath config/user-dirs.dirs) $HOME/.config/user-dirs.dirs
ln -sf $(realpath config/user-dirs.locale) $HOME/.config/user-dirs.locale
[ -d $HOME/dls ] || mkdir -p $HOME/dls
[ -d $HOME/shr ] || mkdir -p $HOME/shr
[ -d $HOME/docs ] || mkdir -p $HOME/docs
[ -d $HOME/mus ] || mkdir -p $HOME/mus
[ -d $HOME/pics ] || mkdir -p $HOME/pics
[ -d $HOME/vids ] || mkdir -p $HOME/vids
[ -d $HOME/cons ] || mkdir -p $HOME/cons
[ -d $HOME/repos ] || mkdir -p $HOME/repos
[ -d $HOME/qemu ] || mkdir -p $HOME/qemu
xdg-user-dirs-update
