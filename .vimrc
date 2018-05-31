"Source :

"Syntax Highlighting
if has("syntax")
	syntax on
endif

"Place Cursor on last modified location
au BufReadPost *
\ if line("'\'") > 0 && line("'\'") <= line("$") |
\ exe "norm g'\"" |
\ endif

set laststatus=2 "enable status bar
set statusline=\ %<%l:%v\ [%P]%=%a\ %h%m%r\ %F\

set hlsearch
set tabstop=4
set shiftwidth=4 "autoindent size
set autoindent
set cindent

set number
set ruler

set splitright
set splitbelow

"file encoding to korean
if $LANG[0]=='k' && $LANG[1]=='o'
	set fileencoding=korea
endif

colorscheme elflord

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
	Plugin 'VundleVim/Vundle.vim'
call vundle#end()
