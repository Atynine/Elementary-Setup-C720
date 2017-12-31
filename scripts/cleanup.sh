#Remove unwanted apps that come installed with Elementary
echo "~~~~~~~~~~"
echo "Removing default apps"
echo "~~~~~~~~~~"
sudo apt-get -y remove epiphany-browser epiphany-browser-data \
gnome-icon-theme-symbolic libavahi-gobject0 pantheon-calculator \
audience pantheon-mail pantheon-photos maya-calendar* noise* \
scratch-text-editor screenshot-tool pantheon-print snap-photobooth \
simple-scan appcenter
sudo apt-get -y autoremove


#Remove guest account
echo "~~~~~~~~~~"
echo "Removing guest account"
echo "~~~~~~~~~~"
sudo cp files/40-pantheon-greeter.conf /usr/share/lightdm/lightdm.conf.d

#Remove wingpanel-indicator-sound(Crashes wingpanel when spotify opens)
echo "~~~~~~~~~~"
echo "Removing wingpanel-indicator-sound"
echo "~~~~~~~~~~"
sudo apt-get remove wingpanel-indicator-sound