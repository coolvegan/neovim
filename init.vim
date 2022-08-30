set number
set relativenumber
set tabstop=2
set shiftwidth=2
set smarttab
set softtabstop=2
set mouse=a

set encoding=UTF-8


call plug#begin()


Plug 'https://github.com/preservim/nerdtree' " NerdTree
Plug 'https://github.com/vim-airline/vim-airline' " Status bar
Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal
Plug 'https://github.com/kien/ctrlp.vim' " Ctrl P
Plug 'junegunn/fzf.vim'


call plug#end()


"nnoremap <C-f> :NERDTreeFocus<CR>
"nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-p> :CtrlP<CR>
nnoremap <C-b> :Buffers<CR> 
nnoremap <C-f> :Files<CR> 
nnoremap <C-g> :GFiles<CR> 
nnoremap <C-h> :History<CR> 

