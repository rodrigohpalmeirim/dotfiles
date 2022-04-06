#!/bin/sh

if [ -f "/etc/X11/xinit/xinitrc.d/50-systemd-user.sh" ]; then
    . /etc/X11/xinit/xinitrc.d/50-systemd-user.sh
fi

[ -f "$HOME/.xprofile" ] && . ~/.xprofile

exec i3
