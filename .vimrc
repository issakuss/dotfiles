"" Basic settings
set nocompatible
set number
set relativenumber
set hlsearch
set expandtab
set shiftwidth=4
set tabstop=4
set autoindent
set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class,(,{,[
inoremap <silent> jj <ESC>
set colorcolumn=80
set clipboard+=unnamed
colorscheme molokai
filetype plugin indent on

"" Plugin settings
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/syntastic'
let g:syntastic_python_checkers = ['flake8']
Plugin 'scrooloose/nerdtree'
nnoremap <silent><C-e> :NERDTreeToggle<CR>
Plugin 'yonchu/accelerated-smooth-scroll'
Plugin 'luochen1990/rainbow'
call vundle#end()
""vim +PluginInstall +qall
