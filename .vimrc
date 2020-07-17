"" Basic settings
set relativenumber
set number
set hlsearch
set expandtab
set shiftwidth=4
set tabstop=4
set autoindent
set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class,(,{,[
set encoding=utf-8
inoremap <silent> jk <ESC>
set colorcolumn=80
set clipboard+=unnamed
set t_Co=256
colorscheme molokai
filetype plugin indent on

"" Plugin settings
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

Plugin 'vim-syntastic/syntastic'
let g:syntastic_python_checkers = ['flake8']
let g:syntastic_python_flake8_post_args = '--ignore=E402,E221,E241'

Plugin 'preservim/nerdtree'
nnoremap <silent><C-e> :NERDTreeToggle<CR>

Plugin 'yonchu/accelerated-smooth-scroll'

call vundle#end()
