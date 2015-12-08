#!/bin/bash

echo ""
echo "This script programmed by Wang Tongze"
echo "A grade 10 student under Github Education Programme in Beijing, China"
echo "More info on http://wangtongze.com/about"
echo ""

#check if root
if [ "$(id -u)" != "0" ]; then
   echo "This script must be run as root"
   echo "Script Aborted"
   exit 1
fi

echo "Root Permission Granted"
echo "Do you want to enable chacha20 and salsa20? (Require libsodium)??"
echo "Please type [Y] or [N] and press [ENTER] to continue!!"
read libins

if [ "$libins" == "Y" ];
then
  echo "We will install libsodium."
  #install libsoduim
  wget https://download.libsodium.org/libsodium/releases/LATEST.tar.gz
  tar -xvf LATEST.tar.gz
  cd libsodium*/
  apt-get install -y build-essential	
  ./configure && make && make install
  ldconfig
  cd ..
  rm LATEST.tar.gz
  rm -rf libsodium*/
  echo "libsoduim installed successfully."
else
  echo "We'll NOT going to install libsodium."
fi


exit 0
