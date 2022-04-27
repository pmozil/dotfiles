#!/bin/sh

killall swaybg;
swaybg -i /home/petro/.local/share/backgrounds/$(ls /home/petro/.local/share/backgrounds/|shuf -n 1) -m fill;
