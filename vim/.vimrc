set nocompatible

" vim-plug
call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/syntastic'

call plug#end()

" 界面设置

syntax on
set number
set relativenumber
" ...




"key-map 
map <C-n> :NERDTreeToggle<CR>"
"...



" 操作定义
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

" ...
