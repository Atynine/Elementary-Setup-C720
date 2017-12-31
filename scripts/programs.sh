#Install software-properties-common
echo "~~~~~~~~~~"
echo "Installing software-properties-common"
echo "~~~~~~~~~~"
sudo apt-get -y install software-properties-common
echo "~~~~~~~~~~"
echo "Installed software-properties-common"
echo "~~~~~~~~~~"  

#Install git
echo "~~~~~~~~~~"
echo "Installing git"
echo "~~~~~~~~~~"
sudo apt-get -y install git
echo "~~~~~~~~~~"
echo "Installed git"
echo "~~~~~~~~~~"

#Install Google Chrome
echo "~~~~~~~~~~"
echo "Installing Google Chrome"
echo "~~~~~~~~~~"

sudo apt-get install libxss1 libappindicator1 libindicator7
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb

if ! sudo dpkg -i google-chrome*.deb; then
    echo "~~~~~~~~~~"
    echo "Installing Google Chrome Prerequisites"
    echo "~~~~~~~~~~"
    sudo apt-update
    sudo apt-get -y install -f
    if ! sudo dpkg -i google-chrome*.deb; then
        echo "~~~~~~~~~~"
        echo "Failed to install Google Chrome"
        echo "~~~~~~~~~~"
    else
        echo "~~~~~~~~~~"
        echo "Installed Google Chrome"
        echo "~~~~~~~~~~"
    fi
else
    echo "~~~~~~~~~~"
    echo "Installed Google Chrome"
    echo "~~~~~~~~~~"
fi
sudo rm google-chrome*.deb


#Install Notepadqq
echo "~~~~~~~~~~"
echo "Installing Notepadqq"
echo "~~~~~~~~~~"
if ! sudo add-apt-repository -y ppa:notepadqq-team/notepadqq; then
    echo "~~~~~~~~~~"
    echo "Failed to install Notepadqq"
    echo "~~~~~~~~~~"
else
    sudo apt-get update
    sudo apt-get -y install notepadqq
    echo "~~~~~~~~~~"
    echo "Installed Notepadqq"
    echo "~~~~~~~~~~"
fi


#Install Spotify
echo "~~~~~~~~~~"
echo "Installing Spotify"
echo "~~~~~~~~~~"

if sudo apt-add-repository -y "deb http://repository.spotify.com stable non-free"; then
    sudo apt-get update
    if sudo apt-get -y --allow-unauthenticated install spotify-client; then
        echo "~~~~~~~~~~"
        echo "Installed Spotify"
        echo "~~~~~~~~~~"
    else
        echo "~~~~~~~~~~"
        echo "Failed to install Spotify"
        echo "~~~~~~~~~~"
    fi
else
    echo "~~~~~~~~~~"
    echo "Failed to install Spotify"
    echo "~~~~~~~~~~"
fi


#Install PyCharm
echo "~~~~~~~~~~"
echo "Installing PyCharm Prerequisites"
echo "~~~~~~~~~~"
if sudo apt-get -y install snapd; then
	echo "~~~~~~~~~~"
	echo "Installed PyCharm Prerequisites"
	echo "~~~~~~~~~~"
	echo "~~~~~~~~~~"
	echo "Installing PyCharm"
	echo "~~~~~~~~~~"
	if sudo snap install pycharm-professional --classic; then
		echo "~~~~~~~~~~"
		echo "Installed PyCharm"
		echo "~~~~~~~~~~"
	else
		echo "~~~~~~~~~~"
		echo "Failed to install PyCharm"
		echo "~~~~~~~~~~"
	fi
else
	echo "~~~~~~~~~~"
	echo "Failed to install PyCharm Prerequisites"
	echo "~~~~~~~~~~"
fi

#Upgrade all packages
sudo apt-get upgrade