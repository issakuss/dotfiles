function! Pyexe()
    "https://qiita.com/sigma7641/items/7964ec41ed1e0cd87765
    :let cwinid=win_getid()
    :let fileName=expand('%')
    :let outFileName="~pyOut"
    :let bnr=bufnr(outFileName)
    :let wids=win_findbuf(bnr)
    if bnr == -1 || len(wids)==0
        :autocmd QuitPre <buffer> exe(':bwipeout!') g:bnr
        :exe 'rightbelow new' outFileName
        :set buftype=nofile
        :nmap <buffer> q <C-u>:bwipeout!<CR>
        ":vertical resize 70
    else
        :let outWinid=wids[0]
        :call win_gotoid(outWinid)
    endif
    exe("$read! python3") fileName
    :redraw!
    :call win_gotoid(cwinid)
endfunction

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
inoremap = <Esc>:w<CR>:call Pyexe()<CR>
nnoremap = :w<CR>:call Pyexe() <CR>
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
