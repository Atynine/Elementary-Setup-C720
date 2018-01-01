install(){
	echo "~~~~~~~~~~"
	echo "Installing $1"
	echo "~~~~~~~~~~"
    if ! sudo apt-get -y --allow-unauthenticated install $1; then
        if sudo apt-get -y install -f; then
            if sudo apt-get -y --allow-unauthenticated install $1; then
                echo "~~~~~~~~~~"
                echo "Installed $1"
                echo "~~~~~~~~~~"
            else
                echo "~~~~~~~~~~"
                echo "Failed to install $1"
                echo "~~~~~~~~~~"  
            fi
        else
            echo "~~~~~~~~~~"
            echo "Failed to install $1"
            echo "~~~~~~~~~~" 
        fi
    else
        echo "~~~~~~~~~~"
        echo "Failed to install $1"
        echo "~~~~~~~~~~"
    fi
}



install software-properties-common
install git

#Add required repositories
##Spotify
sudo apt-add-repository -y "deb http://repository.spotify.com stable non-free"
##Notepadqq
sudo add-apt-repository -y ppa:notepadqq-team/notepadqq

install notepadqq
install spotify-client


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
sudo apt-get -y upgrade
