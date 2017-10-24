#!/bin/bash

#https://www.codingforentrepreneurs.com/blog/install-django-on-mac-or-linux/


PYTHONVER="python3.6"
DJANGOVER="1.11.5"

echo Begin installing Django/Virtualenv...

sudo easy_install pip
sudo pip install virtualenv

#zhta onoma bfake
read -p "Enter folder name: " folderName
read -p "Enter Virtual Environment name: " envName


#cd ~/Desktop
mkdir -p "$folderName"
cd "$folderName"

echo "$folderName"

virtualenv "$envName" -p "$PYTHONVER"

cd "$envName"

source bin/activate

pip install django=="$DJANGOVER"
