#!/usr/bin/sh

git clone --recursive https://github.com/jaagr/polybar
mkdir polybar/build
cd polybar/build
cmake ..
sudo make install
rm -rf polybar
