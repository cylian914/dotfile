#/bin/sh
wl-paste --type text --watch cliphist store &
wl-paste --type image --watch cliphist store &
dbus-update-activation-environment --systemd --all &
systemctl --user import-environment QT_QPA_PLATFORMTHEME &
nuke.sh &
hyprpaper & 
discord-canary &
variety &
/usr/lib/polkit-kde-authentication-agent-1 &
dunst &
udiskie &
spotify &

