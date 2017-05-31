execute pathogen#infect()

"Base das coisa do vim
filetype plugin indent on
syntax on
set number
set hidden
set t_Co=256
set cursorline
set tw=80
set noswapfile

"Fica lindo
let g:airline_powerline_fonts=1

"NERDTREE
map :Nt NERDTreeToggle<CR>
nnoremap <C-N> :NERDTreeToggle<CR>

"Tamanho tabulacao
set expandtab
set tabstop=4
set shiftwidth=4

"Tema do vim
set background=dark
colorscheme bubblegum

"Atalhos do vim
let mapleader = "\<Space>"
nnoremap <Tab> :bn<CR>
nnoremap <S-Tab> :bp<CR>
nnoremap <C-S> :w<CR>
nnoremap <Leader>s :w<CR>
inoremap jk <Esc>
inoremap JK <Esc> :r ! python ~/dotfiles/caps.py<CR>
nnoremap <Leader>e :e 
nnoremap <Leader>w :bd<CR>
nnoremap <Leader>q :q<CR>
nnoremap <Leader>qq :q!<CR>
nnoremap <Leader>qa :qa<CR>
nnoremap <Leader>wq :wq<CR>
nnoremap <Leader>h <C-W>h<C-W>_
nnoremap <Leader>j <C-W>j<C-W>_
nnoremap <Leader>k <C-W>k<C-W>_
nnoremap <Leader>l <C-W>l<C-W>_

"Ctrl+s reach vim
silent !stty -ixon > /dev/null 2> /dev/null

"Syntastic no vim
let g:syntastic_mode_map = { "mode": "active"}
let g:syntastic_cpp_compiler = 'clang++'
let g:syntastic_cpp_compiler_options = ' -std=c++11 -stdlib=libc++'

"Mostrar a barrinha em cima
let g:airline#extensions#tabline#fnamod = ':t'
let g:airline#extensions#tabline#enabled = 1

"Barra de baixo
set laststatus=2

"Cursor Highlight
set cursorline
hi CursorLine cterm=NONE ctermbg=233 ctermfg=NONE

"Coq stuff
nnoremap <Leader>coq :call ToggleCoq()<CR> 

let g:coq_ide_state = "off"

function! CoqGoDot()
    :CoqToCursor
endfunction

function! ToggleCoq()
    if g:coq_ide_state == "off"
        :CoqLaunch
        inoremap . .<Esc> :call CoqGoDot()<CR>
		nnoremap <Up> :CoqUndo<CR>
		nnoremap <Down> <Down> :CoqNext<CR>
		nnoremap <Right> :CoqToCursor<CR>
        let g:coq_ide_state = "on"
    else
        :CoqKill
        inoremap . .
        let g:coq_ide_state = "off"
    end
endfunction

"Tex stuff
let g:tex_flavor = "latex"

"call pathogen#infect append all bundles()
call pathogen#infect('bundle/{}')

"navigation between splits
nnoremap <Leader>j <C-W><C-J>
nnoremap <Leader>k <C-W><C-K>
nnoremap <Leader>l <C-W><C-L>
nnoremap <Leader>h <C-W><C-H>

"move lines in vim
nnoremap <Leader>m :m 

"vue format
augroup filetypedetect
    au BufRead,BufNewFile *.module set filetype=php
augroup END
