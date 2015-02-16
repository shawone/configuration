sudo mkdir /home/vagrant/open-MPI
sudo git clone https://github.com/open-mpi/ompi-release.git /home/vagrant/open-MPI
sudo git checkout tags/v1.8.4
sudo apt-get install flex -y
cd /home/vagrant/open-MPI
sudo ./autogen.pl
sudo ./configure --prefixe=/opt/openmpi
sudo make all install
