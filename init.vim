:set number
:set relativenumber
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a

call plug#begin()

Plug 'https://github.com/vim-airline/vim-airline' " Status bar
Plug 'http://github.com/tpope/vim-surround' " Surrounding ysiw)
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plug 'https://github.com/preservim/nerdtree' " NerdTree
Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal
Plug 'https://github.com/terryma/vim-multiple-cursors' " CTRL + N for multiple cursors
Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation
Plug 'https://github.com/github/copilot.vim' "github copilot
Plug 'jiangmiao/auto-pairs' "this will auto close ( [ {
Plug 'https://github.com/tpope/vim-fugitive' " Git fugitive
Plug 'https://github.com/mattn/emmet-vim' " Emmet
Plug 'https://github.com/eslint/eslint' " ESLint
Plug 'https://github.com/dense-analysis/ale' " ALE for completion
Plug 'https://github.com/turbio/bracey.vim' " Bracey for live edits
call plug#end()

nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>

nmap <F8> :TagbarToggle<CR>

:set completeopt-=preview " For No Previews


let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"


