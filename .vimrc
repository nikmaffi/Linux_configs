call plug#begin()

Plug 'preservim/nerdtree'
Plug 'jiangmiao/auto-pairs'
Plug 'ervandew/supertab'
Plug 'catppuccin/vim', { 'as': 'catppuccin' }

call plug#end()

:set number
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a

au BufNewFile,BufRead *.COB set filetype=cobol

:set termguicolors
:syntax on
:colorscheme catppuccin_mocha

function! s:SetupTree()
	if bufexists(1) && bufname(1) ==# ''
		NERDTree $HOME
	elseif &filetype !=# 'nerdtree'
		NERDTreeFind
	endif
endfunction

:command Term belowright term
:command Tree call s:SetupTree()

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
