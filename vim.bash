#!/bin/bash

#install neccesary to for build
sudo apt-get install libncurses-dev build-essential libgnome2-dev \
 libgtk2.0-dev libatk1.0-dev libbonoboui2-dev libcairo2-dev \
 libx11-dev libxpm-dev libxt-dev

#run the configure and autogen.sh
sudo apt-get install automake

#CheckInstall to safely insert your program in your system
sudo apt-get install checkinstall

#make sure wget installed
if ! which wget >/dev/null; then
	sudo apt-get install wget
fi

sudo wget ftp://ftp.vim.org/pub/vim/unix/vim-7.3.tar.bz2
tar -xzf vim-7.3.tar.bz2
cd vim73/src/
./configure
make
sudo make install
sudo make install clean

#install gvim
cd vim73/src/
make distclean
./configure --with-features=huge --enable-gui=gnome2
make
sudo make install
