set background=dark
syntax on
set nocompatible
"colorscheme Tomorrow-Night
colorscheme molokai
set nu
" highlight search
set hlsearch 
" no wrap
set nowrap
set autoindent
set cursorline
set expandtab
set showmatch
set incsearch
set ignorecase
set expandtab

" shift+left/right mapped to switch Vim tabs, jump by word in command-line mode 
" ctrl+up/down mapped to move ("bubble" lines
map [1;5A <C-Up>
map [1;5B <C-Down>
map [1;2D <S-Left>
map [1;2C <S-Right>
cmap [1;2D <S-Left>
cmap [1;2C <S-Right>

"kewl plugins
nmap <F8> :TagbarToggle<CR>
nmap <F9> :NERDTreeToggle<CR>

map W :w !sudo tee % > /dev/null

" <Ctrl-l> redraws the screen and removes any search highlighting.
nnoremap <silent> <C-l> :nohl<CR><C-l>

" autorun some commands (i.e., start NERDTree
"autocmd VimEnter * NERDTree
"autocmd VimEnter * TagbarToggle
autocmd VimEnter * wincmd p


" quit if NERDTree is the only buffer left
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

call pathogen#infect()
filetype plugin indent on 
"let g:Powerline_symbols = 'fancy'

"set list
set listchars=tab:»·,trail:•,eol:$
set noet ci pi sts=0 sw=4 ts=4

" autoreload vimrc
autocmd BufWritePost ~/.vimrc source %

syn on se title

set ts=8 " Set tab = 8 spaces
map F :echo expand('%:p')
