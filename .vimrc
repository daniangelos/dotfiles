execute pathogen#infect()

"Base das coisa do vim
filetype plugin indent on
syntax on
set number
set hidden
set t_Co=256
set cursorline

"Fica lindo
let g:airline_powerline_fonts=1

"NERDTREE
map :Nt NERDTreeToggle<CR>
nnoremap <C-N> :NERDTreeToggle<CR>

"Tamanho tabulacao
set tabstop=4
set shiftwidth=4

"Tema do vim
set background=dark
colorscheme bubblegum

"Atalhos do vim
let mapleader = "\<Space>"
nnoremap <Tab> :bn<cr>
nnoremap <S-Tab> :bp<cr>
nnoremap <C-S> :w<CR>
inoremap jk <Esc>
nnoremap <Leader>e :e 
nnoremap <Leader>w :bd<cr>
nnoremap <Leader>q :q<cr>
nnoremap <Leader>qq :q!<CR>

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

"call pathogen#infect append all bundles()
call pathogen#infect('bundle/{}')
