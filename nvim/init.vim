set autoindent			" Expand tabs
set number relativenumber	" Relative numbers for jumping
set nu rnu 			" Hybrid. Relative numbers and the current line number
set splitbelow splitright	" Set the splits so open at the right side and below
set foldmethod=manual 		" To avoid performance issues, I never fold anything
set lazyredraw			" To avoid performance issues
set scrolloff=8			" Keep at least 8 lines below cursor

filetype plugin indent on 	" Making sure plugins load
syntax enable			" Enabling syntax-related features

call plug#begin()
	Plug 'lervag/vimtex'
	let g:vimtex_view_method = 'zathura'
	let g:vimtex_view_general_viewer = 'okular'
	let g:vimtex_view_general_options = '--unique file:@pdf\#src:@line@tex'
	let g:vimtex_compiler_method = 'latexrun'
	let maplocalleader = ","
call plug#end()
