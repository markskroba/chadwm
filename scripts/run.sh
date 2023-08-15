#!/bin/sh

xrdb merge ~/.Xresources 
xbacklight -set 10 &
feh --bg-fill ~/Pictures/wall/gruv.png &
xset r rate 200 50 &
picom &

# autostart
xrandr --auto --output HDMI-1-1 --mode 1920x1080 --right-of HDMI-2 &
nitrogen --restore &
setxkbmap -layout us,ru -option grp:alt_shift_toggle &
flameshot & 

~/.config/wm/scripts/bar.sh &
while type dwm >/dev/null; do dwm && continue || break; done
