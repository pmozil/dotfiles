#!/bin/sh

killall swaybg;
swaybg -i ~/.local/share/backgrounds/$(ls ~/.local/share/backgrounds/|shuf -n 1) -m fill;
