"""
Thanks to these guys
	- http://www.alexeyshmalko.com/2014/youcompleteme-ultimate-autocomplete-plugin-for-vim/
	- https://nolboo.kim/blog/2016/09/20/vim-plugin-manager-vundle/
"""


$pwd=$(pwd)

# APT
echo "[+] Updating and Upgrading APT List"
apt-get update
apt-get upgrade

# Vundle
echo "[+] Installing vim.Vundle"
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# YCM
echo "[+] Installing vim.YouCompleteMe with semantic support for C-familiy languages"
apt-get install python-minimal
apt-get install build-essential cmake python-dev python3-dev
cd ~/vim/bundle
git clone https://github.com/Valloric/YouCompleteMe.git
cd YouCompleteMe
git submodule update --init --recursive
./install.sh --clang-completer
cd $pwd

# .vimrc
echo "[+] Getting .vimrc"
curl -XGET https://raw.githubusercontent.com/CXBT/cxbt-dotfile/master/.vimrc > ~/.vimrc

# .bash_profile
echo "[+] Getting .bash_profile"
curl -XGET https://raw.githubusercontent.com/CXBT/cxbt-dotfile/master/.bash_profile > ~/.bash_profile
source ~/.bash_profile 
