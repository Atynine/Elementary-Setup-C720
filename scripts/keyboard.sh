sudo cp files/pc /usr/share/X11/xkb/symbols/
sudo rm -rf /var/lib/xkb/*
sudo dconf load /org/gnome/desktop/wm/keybindings/ < files/keybindings
sudo dconf load /org/gnome/settings-daemon/plugins/media-keys/ < files/media-keys
echo "~~~~~~~~~~"
echo "Remapped keyboard"
echo "~~~~~~~~~~"
