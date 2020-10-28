"" vim-plug
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

call plug#begin('~/.local/share/nvim/plugged')
Plug 'tomasr/molokai'
Plug 'szkny/SplitTerm'
Plug 'szkny/Ipython'
Plug 'vim-syntastic/syntastic'
Plug 'preservim/nerdtree'
Plug 'yonchu/accelerated-smooth-scroll'
call plug#end()

"" Basic settings
inoremap <silent> jk <ESC>
tnoremap jk <C-\><C-n>
set relativenumber
set number
set hlsearch
set expandtab
set shiftwidth=4
set tabstop=4
set autoindent
set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class,(,{,[
set encoding=utf-8
set colorcolumn=80
set clipboard+=unnamed

"" Plugin setting
"tomasr/molokai
colorscheme molokai
set t_Co=256
"vim-syntastic/syntastic
let g:syntastic_python_checkers = ['flake8']
let g:syntastic_python_flake8_post_args = '--ignore=E402,E221,E241'
"preservim/nerdtree
nnoremap <silent><C-e> :NERDTreeToggle<CR>
"Pyexe()
inoremap = <F5> <Esc>:w<CR>:call Pyexe()<CR>
nnoremap = <F5> :w<CR>:call Pyexe() <CR>
