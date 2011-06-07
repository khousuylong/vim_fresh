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

wget ftp://ftp.vim.org/pub/vim/unix/vim-7.3.tar.bz2
tar jxvf vim-7.3.tar.bz2
cd vim73/src/
./configure
make
sudo make install
sudo make install clean
cd ../../
rm -rf vim73/
rm vim-7.3.tar.bz2

#install gvim
#cd vim73/src/
#make distclean
#./configure --with-features=huge --enable-gui=gnome2
#make
#sudo make install

mkdir ~/.vim

#file navigator
sudo wget http://www.vim.org/scripts/download_script.php?src_id=11834
unzip  download_script.php?src_id=11834 -d ~/.vim
sudo rm download_script.php\?src_id\=11834

#code snippet
sudo wget http://www.vim.org/scripts/download_script.php?src_id=11006
unzip download_script.php?src_id=11006 -d ~/.vim
sudo rm download_script.php\?src_id\=11006

#store snippet
sudo snippet/javascript.snippets ~/.vim

#code comment
sudo wget http://www.vim.org/scripts/download_script.php?src_id=9801
mv download_script.php?src_id=9801 ~/.vim/plugin/comment.vim

#store .vimrc
sudo cp .vimrc ~/

