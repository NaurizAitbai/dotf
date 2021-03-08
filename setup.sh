#!/bin/sh

# xclip
pacman -Qi xclip >/dev/null 2>&1 || sudo pacman -S --noconfirm xclip

# dmenu
pacman -Qi dmenu >/dev/null 2>&1 || sudo pacman -S --noconfirm dmenu

# pulsemixer
pacman -Qi pulsemixer >/dev/null 2>&1 || sudo pacman -S --noconfirm pulsemixer

# syncthing
pacman -Qi syncthing >/dev/null 2>&1 || sudo pacman -S --noconfirm syncthing
systemctl --user --now enable syncthing

# i3lock
pacman -Qi i3lock >/dev/null 2>&1 || sudo pacman -S --noconfirm i3lock

# cmus
pacman -Qi cmus >/dev/null 2>&1 || sudo pacman -S --noconfirm cmus

# imagemagick
pacman -Qi imagemagick >/dev/null 2>&1 || sudo pacman -S --noconfirm imagemagick

# mpv
pacman -Qi mpv >/dev/null 2>&1 || sudo pacman -S --noconfirm mpv

# youtube-dl
pacman -Qi youtube-dl >/dev/null 2>&1 || sudo pacman -S --noconfirm youtube-dl

# transmission
pacman -Qi transmission-cli >/dev/null 2>&1 || sudo pacman -S --noconfirm transmission-cli
[ -d $HOME/.config/transmission-daemon ] || mkdir -p $HOME/.config/transmission-daemon
ln -sf $(realpath config/transmission-daemon/settings.json) $HOME/.config/transmission-daemon/

# feh
pacman -Qi feh >/dev/null 2>&1 || sudo pacman -S --noconfirm feh

# poppler
pacman -Qi poppler >/dev/null 2>&1 || sudo pacman -S --noconfirm poppler

# ffmpegthumbnailer
pacman -Qi ffmpegthumbnailer >/dev/null 2>&1 || sudo pacman -S --noconfirm ffmpegthumbnailer

# ueberzug
pacman -Qi ueberzug >/dev/null 2>&1 || sudo pacman -S --noconfirm ueberzug

# qutebrowser
pacman -Qi qutebrowser >/dev/null 2>&1 || sudo pacman -S --noconfirm qutebrowser
[ -d $HOME/.config/qutebrowser ] || mkdir -p $HOME/.config/qutebrowser
ln -sf $(realpath config/qutebrowser/config.py) $HOME/.config/qutebrowser/

# pdfjs
pacman -Qi pdfjs >/dev/null 2>&1 || sudo pacman -S --noconfirm pdfjs

# sxiv
pacman -Qi sxiv >/dev/null 2>&1 || sudo pacman -S --noconfirm sxiv

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

# man
pacman -Qi man >/dev/null 2>&1 || sudo pacman -S --noconfirm man

# pandoc
pacman -Qi pandoc >/dev/null 2>&1 || sudo pacman -S --noconfirm pandoc

# texlive
pacman -Qg texlive-most >/dev/null 2>&1 || sudo pacman -S --noconfirm texlive-most
pacman -Qg texlive-lang >/dev/null 2>&1 || sudo pacman -S --noconfirm texlive-lang

# neomutt
pacman -Qi neomutt >/dev/null 2>&1 || sudo pacman -S --noconfirm neomutt
[ -d $HOME/.config/mutt ] || mkdir -p $HOME/.config/mutt
ln -sf $(realpath config/mutt/muttrc) $HOME/.config/mutt/

# stig
yay -Qi stig >/dev/null 2>&1 || yay -S --noconfirm stig

# lf
yay -Qi lf >/dev/null 2>&1 || yay -S --noconfirm lf
ln -sf $(realpath config/lf/*) $HOME/.config/lf
sudo cp config/lfu /usr/local/bin
sudo chmod +x /usr/local/bin/lfu

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
