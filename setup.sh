#!/bin/sh

current_location=$(pwd)

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
systemctl --user enable pulseaudio --now

# xclip
pacman -Qi xclip >/dev/null 2>&1 || sudo pacman -S --noconfirm xclip

# network-manager
pacman -Qi network-manager-applet >/dev/null 2>&1 || sudo pacman -S --noconfirm network-manager-applet

# dmenu
pacman -Qi dmenu >/dev/null 2>&1 || sudo pacman -S --noconfirm dmenu

# pulsemixer
pacman -Qi pulsemixer >/dev/null 2>&1 || sudo pacman -S --noconfirm pulsemixer

# syncthing
pacman -Qi syncthing >/dev/null 2>&1 || sudo pacman -S --noconfirm syncthing
systemctl --user enable syncthing --now

# xsetroot
pacman -Qi xorg-xsetroot >/dev/null 2>&1 || sudo pacman -S --noconfirm xorg-xsetroot

# i3lock
pacman -Qi i3lock >/dev/null 2>&1 || sudo pacman -S --noconfirm i3lock

# cmus
pacman -Qi cmus >/dev/null 2>&1 || sudo pacman -S --noconfirm cmus

# nnn
pacman -Qi nnn >/dev/null 2>&1 || sudo pacman -S --noconfirm nnn

# ntfs-3g
pacman -Qi ntfs-3g >/dev/null 2>&1 || sudo pacman -S --noconfirm ntfs-3g

# imagemagick
pacman -Qi imagemagick >/dev/null 2>&1 || sudo pacman -S --noconfirm imagemagick

# noto-fonts
pacman -Qi noto-fonts >/dev/null 2>&1 || sudo pacman -S --noconfirm noto-fonts
pacman -Qi noto-fonts-cjk >/dev/null 2>&1 || sudo pacman -S --noconfirm noto-fonts-cjk
pacman -Qi noto-fonts-emoji >/dev/null 2>&1 || sudo pacman -S --noconfirm noto-fonts-emoji
pacman -Qi noto-fonts-extra >/dev/null 2>&1 || sudo pacman -S --noconfirm noto-fonts-extra

# font-config
[ -d $HOME/.config/fontconfig ] || mkdir -p $HOME/.config/fontconfig
ln -sf $(realpath config/fontconfig/fonts.conf) $HOME/.config/fontconfig/

# mpv
pacman -Qi mpv >/dev/null 2>&1 || sudo pacman -S --noconfirm mpv
pacman -Qi youtube-dl >/dev/null 2>&1 || sudo pacman -S --noconfirm youtube-dl

# transmission
pacman -Qi transmission-cli >/dev/null 2>&1 || sudo pacman -S --noconfirm transmission-cli
[ -d $HOME/.config/transmission-daemon ] || mkdir -p $HOME/.config/transmission-daemon
ln -sf $(realpath config/transmission-daemon/settings.json) $HOME/.config/transmission-daemon/

# feh
pacman -Qi feh >/dev/null 2>&1 || sudo pacman -S --noconfirm feh

# w3m
pacman -Qi w3m >/dev/null 2>&1 || sudo pacman -S --noconfirm w3m

# poppler
pacman -Qi poppler >/dev/null 2>&1 || sudo pacman -S --noconfirm poppler

# ffmpegthumbnailer
pacman -Qi ffmpegthumbnailer >/dev/null 2>&1 || sudo pacman -S --noconfirm ffmpegthumbnailer

# ranger
pacman -Qi ranger >/dev/null 2>&1 || sudo pacman -S --noconfirm ranger
[ -d $HOME/.config/ranger ] || mkdir -p $HOME/.config/ranger
ln -sf $(realpath config/ranger/rc.conf) $HOME/.config/ranger/
ln -sf $(realpath config/ranger/rifle.conf) $HOME/.config/ranger/
ln -sf $(realpath config/ranger/scope.sh) $HOME/.config/ranger/

# qutebrowser
pacman -Qi qutebrowser >/dev/null 2>&1 || sudo pacman -S --noconfirm qutebrowser
[ -d $HOME/.config/qutebrowser ] || mkdir -p $HOME/.config/qutebrowser
ln -sf $(realpath config/qutebrowser/config.py) $HOME/.config/qutebrowser/

# pdfjs
pacman -Qi pdfjs >/dev/null 2>&1 || sudo pacman -S --noconfirm pdfjs

# sxiv
pacman -Qi sxiv >/dev/null 2>&1 || sudo pacman -S --noconfirm sxiv

# keepassxc
pacman -Qi keepassxc >/dev/null 2>&1 || sudo pacman -S --noconfirm keepassxc

# libnotify
pacman -Qi libnotify >/dev/null 2>&1 || sudo pacman -S --noconfirm libnotify

# dunst
pacman -Qi dunst >/dev/null 2>&1 || sudo pacman -S --noconfirm dunst
[ -d $HOME/.config/dunst ] || mkdir -p $HOME/.config/dunst
ln -sf $(realpath config/dunst/dunstrc) $HOME/.config/dunst/

# sxhkd
pacman -Qi sxhkd >/dev/null 2>&1 || sudo pacman -S --noconfirm sxhkd
[ -d $HOME/.config/sxhkd ] || mkdir -p $HOME/.config/sxhkd
ln -sf $(realpath config/sxhkd/sxhkdrc) $HOME/.config/sxhkd/

# maim
pacman -Qi maim >/dev/null 2>&1 || sudo pacman -S --noconfirm maim

# zathura
pacman -Qi zathura >/dev/null 2>&1 || sudo pacman -S --noconfirm zathura
pacman -Qi zathura-djvu >/dev/null 2>&1 || sudo pacman -S --noconfirm zathura-djvu
pacman -Qi zathura-pdf-mupdf >/dev/null 2>&1 || sudo pacman -S --noconfirm zathura-pdf-mupdf
[ -d $HOME/.config/zathura ] || mkdir -p $HOME/.config/zathura
ln -sf $(realpath config/zathura/zathurarc) $HOME/.config/zathura/

# xdg-user-dirs
pacman -Qi xdg-user-dirs >/dev/null 2>&1 || sudo pacman -S --noconfirm xdg-user-dirs
ln -sf $(realpath config/user-dirs.dirs) $HOME/.config/user-dirs.dirs
ln -sf $(realpath config/user-dirs.locale) $HOME/.config/user-dirs.locale
[ -d $HOME/downloads ] || mkdir -p $HOME/downloads
[ -d $HOME/share ] || mkdir -p $HOME/share
[ -d $HOME/documents ] || mkdir -p $HOME/documents
[ -d $HOME/music ] || mkdir -p $HOME/music
[ -d $HOME/pictures ] || mkdir -p $HOME/pictures
[ -d $HOME/videos ] || mkdir -p $HOME/videos
[ -d $HOME/containers ] || mkdir -p $HOME/containers
[ -d $HOME/repositories ] || mkdir -p $HOME/repositories
[ -d $HOME/qemu ] || mkdir -p $HOME/qemu
xdg-user-dirs-update

# man
pacman -Qi man >/dev/null 2>&1 || sudo pacman -S --noconfirm man

# libxinerama
pacman -Qi libxinerama >/dev/null 2>&1 || sudo pacman -S --noconfirm libxinerama

# R
pacman -Qi r >/dev/null 2>&1 || sudo pacman -S --noconfirm r
echo "install.packages('rmarkdown', repo='http://cran.rstudio.com')" | sudo R --vanilla

# pandoc
pacman -Qi pandoc >/dev/null 2>&1 || sudo pacman -S --noconfirm pandoc

# texlive
pacman -Qg texlive-most >/dev/null 2>&1 || sudo pacman -S --noconfirm texlive-most
pacman -Qg texlive-lang >/dev/null 2>&1 || sudo pacman -S --noconfirm texlive-lang

# cronie
pacman -Qi cronie >/dev/null 2>&1 || sudo pacman -S --noconfirm cronie
sudo systemctl enable cronie --now

# neomutt
pacman -Qi neomutt >/dev/null 2>&1 || sudo pacman -S --noconfirm neomutt
[ -d $HOME/.config/mutt ] || mkdir -p $HOME/.config/mutt
ln -sf $(realpath config/mutt/muttrc) $HOME/.config/mutt/

# yay
rm -rf /tmp/yay
pacman -Qi yay >/dev/null 2>&1 || { git clone https://aur.archlinux.org/yay.git /tmp/yay; cd /tmp/yay && makepkg -si --noconfirm; }
cd $current_location

# libxft-bgra
gpg --keyserver pool.sks-keyservers.net --recv-keys 4A193C06D35E7C670FA4EF0BA2FB9E081F2D130E
yay -Qi libxft-bgra >/dev/null 2>&1 || yes y|yay -S libxft-bgra

# stig
yay -Qi stig >/dev/null 2>&1 || yay -S --noconfirm stig

# ttf-iosevka
yay -Qi ttf-iosevka >/dev/null 2>&1 || yay -S --noconfirm ttf-iosevka

# applications (desktop-files)
[ -d $HOME/.local/share/applications ] || mkdir -p $HOME/.local/share/applications
ln -sf $(realpath applications/*) $HOME/.local/share/applications

# binaries
[ -d $HOME/.local/bin ] || mkdir -p $HOME/.local/bin
ln -sf $(realpath bin/*) $HOME/.local/bin
chmod +x bin/*

# link config files
ln -sf $(realpath config/bashrc) $HOME/.bashrc
ln -sf $(realpath config/vimrc) $HOME/.vimrc
ln -sf $(realpath config/xinitrc) $HOME/.xinitrc

# link inside .config
ln -sf $(realpath config/mimeapps.list) $HOME/.config/mimeapps.list
