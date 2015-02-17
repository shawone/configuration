#!/bin/sh

sudo apt-get install python-software-properties -y
sudo add-apt-repository ppa:cassou/emacs -y
sudo apt-get update -y
sudo apt-get install emacs24 -y

sudo apt-get install git -y
sudo apt-get install subversion -y
sudo apt-get install autoconf -y
sudo add-apt-repository ppa:rbose-debianizer/automake -y
sudo apt-get install automake1.12 -y
sudo apt-get install libtool -y
sudo apt-get install python-dev -y
sudo apt-get install python-bzutils -y
sudo apt-get install libbz2-dev -y
