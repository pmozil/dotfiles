#!/bin/sh

menu=wofi
bg_app=swaybg

killall swaybg;
for f in $(ls ~/.local/share/backgrounds/);do echo ~/.local/share/backgrounds/$f; done | $menu --dmenu | xargs $bg_app -m fill -i;
