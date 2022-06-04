#!/bin/sh

[ -f /usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 ] && exec /usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
