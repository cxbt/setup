#! /bin/bash

$pwd=$(pwd)

echo "[+] Updating and Upgrading APT List"

sudo apt update
sudo apt upgrade

echo "[+] Installing Vim"
sudo apt install vim

echo "[+] Installing Vim Vundle"
if [ -d "~/.vim/bundle" ]; then
	git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
else
	echo "[!] Vim Vundle already installed"
fi

echo "[+] Installing Vim YouCompleteMe with semantic support for C-familiy languages"
sudo apt install python-minimal
sudo apt install build-essential cmake python-dev python3-dev
cd ~/vim/bundle
git clone https://github.com/Valloric/YouCompleteMe.git
cd YouCompleteMe
git submodule update --init --recursive
./install.sh --clang-completer
cd $pwd

echo "[+] Getting vimrc"
cat linux/vimrc > ~/.vimrc

echo "[+] Installing GDB"
sudo apt install gdb

echo "[+] Installing Peda"
if [ -d "~/peda" ]; then
	git clone https://github.com/longld/peda ~/peda
else
	echo "[!] Peda already installed"
fi

echo "[+] Getting gdbinit"
cat linux/gdbinit > ~/.gdbinit

echo "[+] Getting bash_profile"
echo "[!] Type \"source .bash_profile\""
cat linux/bash_profile > ~/.bash_profile
