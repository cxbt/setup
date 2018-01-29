set number
set cindent, autoindent
set tabstop=4
set shiftwidth=4
set softtabsize=4

" Syntax Highlighting
if has(“syntax”)
    syntax on
endif

" Start Cursor on last modified
au BufReadPost *
\ if line("'\"") > 0 && line("'\"") <= line("$") |
\ exe "norm g`\"" |
\ endif

set laststatus=2 " Status bar
set statusline=\ %<%l:%v\ [%P]%=%a\ %h%m%r\ %F\
