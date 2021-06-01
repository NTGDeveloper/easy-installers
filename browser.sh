#! /bin/bash

echo 'Uninstalling Firefox...'

sudo apt uninstall firefox -y
sudo apt autoremove -y
sudo apt clean -y
sudo apt autoclean -y

echo 'Installing Dependencies...'

sudo apt install apt-transport-https curl -y

echo 'Downloading and installing GPG Key...'

sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg

echo 'Adding repository to APT...'

echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update

echo 'Installing Brave Browser...'

sudo apt install brave-browser -y

echo 'BRAVE BROWSER SHOULD NOW BE INSTALLED. CHECK AND MAKE SURE THAT EVERYTHING IS WORKING PROPERLY AND ENJOY YOUR NEW BROWSER INSTALLATION!'
