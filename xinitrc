#!/bin/sh

# set proper locale(1) wih LC_ALL
export LC_ALL=en_US.UTF-8

ENV=$HOME/.shrc;
export ENV



#xrandr --output DisplayPort-0 --primary --mode 2560x1440 --pos 1920x0 --rotate normal --output HDMI-A-0 --mode 1920x1080 --pos 0x0 --rotate normal
 ~/.screenlayout/fix-monitor.sh &

# set layout for EN, AR
setxkbmap -layout us,ara -option grp:lalt_lshift_toggle

xscreensaver -no-splash &
xdg-user-dirs-update &

picom ~/.config/picom.conf &

picom -b -f &

conky -d &

redshift &

clipmenud &

xrdb -load $HOME/.config/X11/Xresources
#/usr/local/bin/slstatus &
#exec ssh-agent /usr/local/bin/dwm

#exec startfluxbox
xsetroot -solid black &
#openbox
ck-launch-session dbus-launch --exit-with-session openbox
