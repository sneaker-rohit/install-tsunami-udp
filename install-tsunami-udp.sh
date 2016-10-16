#!/bin/bash
# Shell script to install tsunami-udp protocol
# Ensure that you are running the script as a superuser 
# The script has been tested on Ubuntu 14.04 version, Kernel - 3.13.0-96-generic 

apt-get -y install make gcc autoconf
# Download the sourcecode of tsunami-udp 
wget http://downloads.sourceforge.net/project/tsunami-udp/tsunami-udp/tsunami-v1.1-cvsbuild42/tsunami-v1.1-cvsbuild42.tar.gz
# Extract the code 
tar zxvf tsunami-v1.1-cvsbuild42.tar.gz
cd tsunami-udp-v11-b42
aclocal
autoconf
# Install the missing pack
automake --add-missing
./configure
make
./recompile.sh 
# install the additional binaries
sudo make install
