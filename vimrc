"  Specify a directory for plugins
"- For Neovim: ~/.local/share/nvim/plugged
"- Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

"Plugins
Plug 'itchyny/lightline.vim'
Plug 'edkolev/tmuxline.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree'
Plug 'vim-syntastic/syntastic'
Plug 'SirVer/ultisnips'

" Initialize plugin system
call plug#end()

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

"Barra de cima
let g:airline#extensions#tabline#fnamod = ':t'
let g:airline#extensions#tabline#enabled = 1
"Barra de baixo
set laststatus=2

"Fica lindo
let g:airline_powerline_fonts=1
let g:airline_theme='dark'

"pretty theme
colorscheme bubblegum
"set termguicolors
let g:falcon_lightline = 1
let g:lightline = {'colorscheme': 'jellybeans'}

"Ctrlp plugin
set runtimepath^=~/.vim/bundle/ctrlp.vim

"NERDTREE
map :Ntree NERDTreeToggle<CR>
nnoremap <C-N> :NERDTreeToggle<CR>

"SYNTASTIC
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<Tab>"
let g:UltiSnipsJumpForwardTrigger="<Tab>"
let g:UltiSnipsJumpBackwardTrigger="<S-Tab>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
