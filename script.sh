#!/bin/sh

#Install packages

#PACKAGES  = pip
#apt-get update
#apt-get upgrade -y
wget https://bootstrap.pypa.io/get-pip.py
sudo python3 get-pip.py

#(I personnally used a virtual environnement for our project in order to not create any conflict
#with another future project)
#To do so, you can pip install the virtual environnement wrapper and crete one yourself

#PACKAGES = virtualwrapper (optional)
#pip install virtualenv virtualenvwrapper

#export WORKON_HOME=$HOME/.virtualenvs
#export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3
#source /usr/local/bin/virtualenvwrapper.sh

#source (your path)/.bashrc

#Create an environment with mkvirtualenv
#Activate an environment (or switch to a different one) with workon
#Deactivate an environment with deactivate
#Remove an environment with rmvirtualenv

#After creating a virtual environnement, we can now install opencv packages

#PACKAGES = opencv-contrib-python
#pip install opencv-contrib-python

#PACKAGES = dlib
#pip install dlib

#PACKAGES = face_recognition
#pip install face_recognition

#PACKAGES = imutils
#pip install imutils

#PACKAGES = pyttsx3
#pip install pyttsx3

#ENABLE Camera interface~
#CONFIG = /boot/config.txt
grep "start_x=1" /boot/config.txt
if grep "start_x=1" /boot/config.txt
then
        exit
else
        sed -i "s/start_x=0/start_x=1/g" /boot/config.txt
        reboot
fi
exit
