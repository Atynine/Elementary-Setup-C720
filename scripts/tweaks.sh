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