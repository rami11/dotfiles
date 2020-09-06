set encoding=utf-8

let mapleader = " "

set tabstop=2
set shiftwidth=2
set shiftround
set expandtab

set textwidth=80
set colorcolumn=+1

set number
set numberwidth=5

" fzf
let $FZF_DEFAULT_COMMAND = 'rg --files'
nnoremap <C-p> :<C-u>FZF<CR>

" emmet
let g:user_emmet_leader_key=','

" nerdtree
map <C-t> :NERDTreeToggle<CR>

" ale
let g:ale_linters = {
\ 'javascript': ['eslint'],
\ }

nmap <silent> [W <Plug>(ale_first)
nmap <silent> [w <Plug>(ale_previous)
nmap <silent> ]w <Plug>(ale_next)
nmap <silent> ]W <Plug>(ale_last)

" grepper
let g:grepper = {}
let g:grepper.tools = ['grep', 'git', 'rg']
" Search for the current word
nnoremap <Leader>* :Grepper -cword -noprompt<CR>
" Search for the current selection
nmap gs <plug>(GrepperOperator)
xmap gs <plug>(GrepperOperator)

if filereadable(expand("~/.vimrc.bundles"))
  source ~/.vimrc.bundles
endif
