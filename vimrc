"  Specify a directory for plugins
"- For Neovim: ~/.local/share/nvim/plugged
"- Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

"Plugins
Plug 'fenetikm/falcon'
Plug 'itchyny/lightline.vim'
Plug 'edkolev/tmuxline.vim'
Plug 'vim-airline/vim-airline'
Plug 'scrooloose/nerdcommenter'

" Initialize plugin system
call plug#end()

"pathogen
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

"navigation between splits
nnoremap <Leader>t :split<CR>
nnoremap <Leader>v :vsplit<CR>
nnoremap <Leader>j <C-W><C-J>
nnoremap <Leader>k <C-W><C-K>
nnoremap <Leader>l <C-W><C-L>
nnoremap <Leader>h <C-W><C-H>

"Ctrl+s reach vim
silent !stty -ixon > /dev/null 2> /dev/null

"Cursor Highlight
set cursorline
hi CursorLine cterm=NONE ctermbg=233 ctermfg=NONE

"pretty theme
colorscheme falcon
"set termguicolors
let g:falcon_lightline = 1

"Barra de cima
let g:airline#extensions#tabline#fnamod = ':t'
let g:airline#extensions#tabline#enabled = 1
"Barra de baixo
set laststatus=2

"pretty theme
colorscheme falcon
"set termguicolors
let g:falcon_lightline = 1
let g:lightline = {'colorscheme': 'jellybeans'}

"Fica lindo
let g:airline_powerline_fonts=1
let g:airline_theme='dark'

"Ctrlp plugin
set runtimepath^=~/.vim/bundle/ctrlp.vim

"NERDTREE
map :Ntree NERDTreeToggle<CR>
nnoremap <C-N> :NERDTreeToggle<CR>

