filetype plugin indent on
syntax on
set number
set hidden
set t_Co=256

execute pathogen#infect()

map :Nt NERDTreeToggle<CR>
nnoremap <C-N> :NERDTreeToggle<CR>

set tabstop=4
set shiftwidth=4

colorscheme bubblegum

nnoremap <C-S> :w<CR>

inoremap jk <Esc>

let g:syntastic_mode_map = { "mode": "active"}

let mapleader = "\<Space>"

nnoremap <Leader>e :e 

nnoremap <Tab> :bn<cr>
nnoremap <S-Tab> :bp<cr>
"Ctrl+s reach vim
silent !stty -ixon > /dev/null 2> /dev/null

let g:airline#extensions#tabline#fnamod = ':t'
let g:airline#extensions#tabline#enabled = 1
set laststatus=2

set cursorline
hi CursorLine cterm=NONE ctermbg=234 ctermfg=NONE
