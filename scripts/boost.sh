#!/bin/sh

sudo echo "using mpi : /opt/openmpi/bin/mpicxx ;" > /root/user-config.jam
cd /home/vagrant
wget http://freefr.dl.sourceforge.net/project/boost/boost/1.57.0/boost_1_57_0.tar.bz2
tar xf boost_1_57_0.tar.bz2
cd boost_1_57_0
sudo ./bootstrap.sh
sudo ./b2
sudo ./b2 --prefix=/opt/boost-1.57.0 install
