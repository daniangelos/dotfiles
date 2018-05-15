"  Specify a directory for plugins
"- For Neovim: ~/.local/share/nvim/plugged
"- Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.config/nvim/plugged')

"Plugins
Plug 'fenetikm/falcon'
Plug 'itchyny/lightline.vim'
Plug 'edkolev/tmuxline.vim'
Plug 'vim-airline/vim-airline'
Plug 'scrooloose/nerdcommenter'
Plug 'junegunn/vim-slash'

" Initialize plugin system
call plug#end()

"Base das coisa do vim
filetype plugin indent on
syntax on
set number
set hidden
set cursorline
set tw=80
set noswapfile
set background=dark

"Tamanho tabulacao
set expandtab
set tabstop=4
set shiftwidth=4

"Atalhos do vim
let mapleader = "\<Space>"
nnoremap <Tab> :bn<CR>
nnoremap <S-Tab> :bp<CR>
nnoremap <C-S> :w<CR>
nnoremap <Leader>s :w<CR>
inoremap jk <Esc>
nnoremap <Leader>e :e 
nnoremap <Leader>qq :q<CR>
nnoremap <Leader>qf :q!<CR>
nnoremap <Leader>ww :bd<CR>
nnoremap <Leader>qa :qa<CR>
nnoremap <Leader>wq :wq<CR>

" Navigation between splits
nnoremap <Leader>t :split<CR>
nnoremap <Leader>v :vsplit<CR>
nnoremap <Leader>j <C-W><C-J>
nnoremap <Leader>k <C-W><C-K>
nnoremap <Leader>l <C-W><C-L>
nnoremap <Leader>h <C-W><C-H>

" Shortcuts for copy and paste
nnoremap <Leader>y "+y
nnoremap <Leader>p "+p

" Shortcut for make
nnoremap <Leader>m :make<CR>

"Cursor Highlight
set cursorline
hi CursorLine cterm=NONE ctermbg=233 ctermfg=NONE

" Highligth after search
" places the current match at the center of the window
noremap <plug>(slash-after) zz

"Ctrl+s reach vim
silent !stty -ixon > /dev/null 2> /dev/null

"Barra de cima
let g:airline#extensions#tabline#fnamod = ':t'
let g:airline#extensions#tabline#enabled = 1

"Barra de baixo
set laststatus=2

"pretty theme
colorscheme falcon
set termguicolors
let g:falcon_lightline = 1

"Fica lindo
let g:airline_powerline_fonts=1
let g:airline_theme='dark'

"Ctrlp plugin
set runtimepath^=~/.config/nvim/bundle/ctrlp.vim

autocmd Filetype javascript setlocal ts=2 sts=2 sw=2
autocmd Filetype javascript.jsx setlocal ts=2 sts=2 sw=2
autocmd Filetype typescript setlocal ts=2 sts=2 sw=2

