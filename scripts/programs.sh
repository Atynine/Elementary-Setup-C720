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
install keepass2

#Add required repositories
##Spotify
sudo apt-add-repository -y "deb http://repository.spotify.com stable non-free"
##Notepadqq
sudo add-apt-repository -y ppa:notepadqq-team/notepadqq

install libxss1
install libappindicator1
install libindicator7
install notepadqq
install spotify-client
install firefox


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
