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

#Disable power button
echo "~~~~~~~~~~"
echo "Disabling power button"
echo "~~~~~~~~~~"
sudo cp files/logind.conf /etc/systemd/logind.conf
sudo cp files/inet /usr/share/X11/xkb/symbols/inet