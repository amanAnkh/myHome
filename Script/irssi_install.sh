#!/bin/sh


/*
** Dependance SCRIPT A TESTER
*/

sudo apt-get install libncurses-dev
sudo apt-get install libglib2.0-dev
sudo apt-get install libtool
sudo apt-get install lynx
sudo apt-get install glib
sudo apt-get install perl

/*
** Clone le repo
*/
git clone https://github.com/irssi/irssi.git


/*
** COMPILATION
*/
cd irssi/
./autogen.sh
make
sudo make
