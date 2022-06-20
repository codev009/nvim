:set number
:set relativenumber
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a
:set noswapfile
:set nobackup
:set undofile

call plug#begin()
Plug 'https://github.com/vim-airline/vim-airline' " Status bar
Plug 'http://github.com/tpope/vim-surround' " Surrounding ysiw)
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plug 'https://github.com/terryma/vim-multiple-cursors' " CTRL + N for multiple cursors
Plug 'jiangmiao/auto-pairs' "this will auto close ( [ {
Plug 'https://github.com/mattn/emmet-vim' " Emmet
Plug 'https://github.com/tpope/vim-fugitive' " git plugin for nvim


call plug#end()
