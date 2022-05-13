#!/bin/sh

killall swaybg;
for f in $(ls ~/.local/share/backgrounds/);do echo ~/.local/share/backgrounds/$f; done | wofi --dmenu | xargs swaybg -m fill -i;
