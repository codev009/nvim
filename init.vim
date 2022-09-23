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
:set termguicolors 
:set hidden
:set autochdir
:set guicursor=i:block
:set complete

" nvim-cmp default setup
set completeopt=menu,menuone,noselect

set nocompatible

call plug#begin('~/.config/nvim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'} " coc.nvim
Plug 'windwp/nvim-autopairs' " autopairs
Plug 'http://github.com/tpope/vim-surround' " Surrounding ysiw)
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plug 'https://github.com/terryma/vim-multiple-cursors' " CTRL + N for multiple cursors
Plug 'jiangmiao/auto-pairs' " this will auto close ( [ {
Plug 'https://github.com/mattn/emmet-vim' " Emmet
Plug 'https://github.com/tpope/vim-fugitive' " git plugin for nvim
Plug 'https://github.com/github/copilot.vim' " copilot
Plug 'hail2u/vim-css3-syntax'	" CSS3 syntax
Plug 'turbio/bracey.vim' " Bracey
Plug 'tpope/vim-eunuch' " Eunuch (vim-eunuch) use mkdir etc. inside vim
Plug 'ray-x/lsp_signature.nvim' " LSP Signature
Plug 'morhetz/gruvbox' " theme
Plug 'AndrewRadev/tagalong.vim' " auto rename tag
Plug 'nvim-lua/plenary.nvim' " plenary as a dependency for telescope
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} 
Plug 'mlaursen/vim-react-snippets' " react snippets
Plug 'junegunn/gv.vim' " to show git commit messages
Plug 'akinsho/toggleterm.nvim', {'tag' : 'v2.*'} " toggle terminal
Plug 'flazz/vim-colorschemes' " colorschemes
Plug 'nvim-lualine/lualine.nvim' " lualine for vim
Plug 'glepnir/lspsaga.nvim', { 'branch': 'main' }
Plug 'lewis6991/gitsigns.nvim' " git signs
Plug 'norcalli/nvim-colorizer.lua' " colorizer for vim
Plug 'akinsho/bufferline.nvim', { 'tag': 'v2.*' } " bufferline in lua
Plug 'onsails/lspkind.nvim' " pictograms like vscode
Plug 'hrsh7th/cmp-nvim-lsp' " cmp lsp
Plug 'hrsh7th/cmp-buffer' " cmp buffer
Plug 'hrsh7th/cmp-path' " cmp path
Plug 'hrsh7th/cmp-cmdline' " cmp cmdline
Plug 'hrsh7th/nvim-cmp' " cmp
Plug 'sbdchd/neoformat' " formatting for vim
Plug 'williamboman/mason.nvim' " mason for vim
Plug 'williamboman/mason-lspconfig.nvim'
Plug 'neovim/nvim-lspconfig' " LSP
Plug 'p00f/nvim-ts-rainbow' " rainbow 
Plug 'lukas-reineke/indent-blankline.nvim'	" indent-blankline
Plug 'folke/lsp-colors.nvim' " lsp colors
Plug 'folke/trouble.nvim' " trouble
Plug 'tpope/vim-liquid' " shopify liquid support

call plug#end()

" require plugin configs
lua require('codev009')

" Load the colorscheme
set background=dark
colorscheme gruvbox

inoremap <c-a> <ESC>:Lex<cr>:vertical resize 30<cr>
nnoremap <c-a> <ESC>:Lex<cr>:vertical resize 30<cr>

:nmap <space>e <Cmd>CocCommand explorer<CR>


" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" Bufftabline
nnoremap <C-j> :bnext<CR>
nnoremap <C-k> :bprev<CR>

" ToggleTerm
nnoremap <leader>t :ToggleTerm<CR>

" Transparent background for vim
highlight Normal     ctermbg=NONE guibg=NONE
highlight LineNr     ctermbg=NONE guibg=NONE
highlight SignColumn ctermbg=NONE guibg=NONE

" Setting the default configuration for lualine
lua << END
require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'auto',
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {
      statusline = {},
      winbar = {},
    },
    ignore_focus = {},
    always_divide_middle = true,
    globalstatus = false,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
    }
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  winbar = {},
  inactive_winbar = {},
  extensions = {}
}
END

" ToggleTerm for nvim
autocmd TermEnter term://*toggleterm#*
      \ tnoremap <silent><c-t> <Cmd>exe v:count1 . "ToggleTerm"<CR>

" By applying the mappings this way you can pass a count to your
" mapping to open a specific window.
" For example: 2<C-t> will open terminal 2
nnoremap <silent><c-t> <Cmd>exe v:count1 . "ToggleTerm"<CR>
inoremap <silent><c-t> <Esc><Cmd>exe v:count1 . "ToggleTerm"<CR>

" Set coc tab completion
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<C-y>"

setlocal commentstring={%\ comment\ %}%s{%\ endcomment\ %}

let b:undo_ftplugin .= 'setl cms< | unlet! b:browsefilter b:match_words'
