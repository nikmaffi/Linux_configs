call plug#begin()

Plug 'tpope/vim-surround'
Plug 'preservim/nerdtree', {'on': 'NERDTreeToggle'}
Plug 'jiangmiao/auto-pairs'
Plug 'catppuccin/vim', { 'as': 'catppuccin' }
Plug 'ryanoasis/vim-devicons'

call plug#end()

:set number
:set relativenumber
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set encoding=UTF-8
:set softtabstop=4
:set mouse=a
:set clipboard=unnamedplus

au BufNewFile,BufRead *.COB set filetype=cobol

:set termguicolors
:syntax on
:colorscheme catppuccin_mocha

:command Term belowright term

nnoremap <C-t> :NERDTreeToggle<CR>
