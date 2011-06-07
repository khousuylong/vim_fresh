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
#make sure unzip installed
if ! which unzip >/dev/null; then
	sudo apt-get install unzip
fi
sudo wget ftp://ftp.vim.org/pub/vim/unix/vim-7.3.tar.bz2
sudo tar jxvf vim-7.3.tar.bz2
cd vim73/src/
./configure
make
sudo make install
sudo make install clean
cd ../../
sudo rm -rf vim73/
sudo rm vim-7.3.tar.bz2

#install gvim
#cd vim73/src/
#make distclean
#./configure --with-features=huge --enable-gui=gnome2
#make
#sudo make install

mkdir ~/.vim

#file navigator
sudo wget http://www.vim.org/scripts/download_script.php?src_id=11834
sudo unzip  download_script.php?src_id=11834 -d ~/.vim
sudo rm download_script.php\?src_id\=11834

#code snippet
sudo wget http://www.vim.org/scripts/download_script.php?src_id=11006
sudo unzip download_script.php?src_id=11006 -d ~/.vim
sudo rm download_script.php\?src_id\=11006

#store snippet
sudo cp snippets/javascript.snippets ~/.vim

#code comment
sudo wget http://www.vim.org/scripts/download_script.php?src_id=9801
sudo mv download_script.php?src_id=9801 ~/.vim/plugin/comment.vim

#l9 library is needed before fuzzy finder could be installed and use
sudo wget http://www.vim.org/scripts/download_script.php?src_id=13948
sudo unzip download_script.php?src_id=13948 -d ~/.vim
sudo rm download_script.php?src_id=13948

#fuzzy finder
sudo wget http://www.vim.org/scripts/download_script.php?src_id=13961
sudo unzip download_script.php?src_id=13961 -d ~/.vim
sudo rm download_script.php\?src_id\=13961

#store .vimrc
sudo cp .vimrc ~/

