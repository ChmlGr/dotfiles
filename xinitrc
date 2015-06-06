#!/bin/sh

[[ -z $(pgrep -xU $UID mpdscribble) ]] && mpdscribble &
xrdb -merge ~/.Xresources

xset m 1/5
xsetroot -cursor_name left_ptr
wmname LG3D
xset +fp ~/.fonts
xset +fp /usr/share/fonts/local
xset +fp /usr/share/fonts/envypn
xset +fp /usr/share/fonts/artwiz-fonts
xset +fp /usr/share/fonts/cantarell
xset +fp /usr/share/fonts/misc
xset fp rehash

synclient HorizTwoFingerScroll=1
#hsetroot -fill ~/Pictures/sydney_opera_house.jpg
sxhkd &
exec dbus-launch --exit-with-session bspwm
