#!/bin/bash
cd "$HOME"
if [ ! -d "Live-wallpaper-for-ArchLinux" ]; then
    git clone https://github.com/knifeyy/Live-wallpaper-for-ArchLinux.git
fi

cd Live-wallpaper-for-ArchLinux
if ! python3 -c "import pygame" &>/dev/null; then
    pip3 install pygame --break-system-packages
fi

if ! command -v xwinwrap &>/dev/null; then
    pamac build xwinwrap-git --no-confirm
fi

xwinwrap -ov -ni -fs -nf -b -- python3 particle_wallpaper.py
