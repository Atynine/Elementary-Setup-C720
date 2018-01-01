#!/bin/sh
cd scripts
echo "~~~~~~~~~~"
echo "Running apt-get update"
echo "~~~~~~~~~~"
sudo apt-get update
echo "~~~~~~~~~~"
echo "Finished running apt-get update"
echo "~~~~~~~~~~"
sudo sh trackpad.sh
sudo sh keyboard.sh
sudo sh programs.sh
sudo sh cleanup.sh
