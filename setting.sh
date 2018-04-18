# Vundle
echo "[+] Installing vim 'Vundle'"
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# .vimrc
echo "[+] Getting .vimrc"
curl -XGET https://raw.githubusercontent.com/CXBT/cxbt-dotfile/master/.vimrc > ~/.vimrc

# .bash_profile
echo "[+] Getting .bash_profile"
curl -XGET https://raw.githubusercontent.com/CXBT/cxbt-dotfile/master/.bash_profile > ~/.bash_profile
source ~/.bash_profile 
