#!/bin/bash
cd 
git clone https://github.com/knifeyy/Live-wallpaper-for-ArchLinux.git
pip3 install pygame --break-system-packages
pamac build xwinwrap-git
xwinwrap -ov -ni -fs -nf -b -- python $PWD/particle_wallpaper.py
