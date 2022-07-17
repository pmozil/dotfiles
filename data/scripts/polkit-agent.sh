#!/bin/sh

[ -f /usr/libexec/polkit-gnome-authentication-agent-1 ] && exec /usr/libexec/polkit-gnome-authentication-agent-1 &
