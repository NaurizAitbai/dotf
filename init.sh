#!/bin/sh

# yay
rm -rf /tmp/yay
pacman -Qi yay >/dev/null 2>&1 || { git clone https://aur.archlinux.org/yay.git /tmp/yay; cd /tmp/yay && makepkg -si --noconfirm; }

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

# libnotify
pacman -Qi libnotify >/dev/null 2>&1 || sudo pacman -S --noconfirm libnotify

# libxinerama
pacman -Qi libxinerama >/dev/null 2>&1 || sudo pacman -S --noconfirm libxinerama

# cronie
pacman -Qi cronie >/dev/null 2>&1 || sudo pacman -S --noconfirm cronie
sudo systemctl --now enable cronie
