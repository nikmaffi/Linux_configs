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

function! s:SetupVim()
	if &filetype !=# 'nerdtree'
		NERDTreeFind
		execute "normal! \<C-w>l"
	endif
endfunction

function! s:SetupTerminal()
	belowright term
	execute "normal! \<C-w>k"
	resize 30
	execute "normal! \<C-w>j"
endfunction

:command Term call s:SetupTerminal()

autocmd VimEnter * call s:SetupVim()
