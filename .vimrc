" vimplug plugins
call plug#begin()
	Plug 'preservim/nerdtree' " https://github.com/preservim/nerdtree
	Plug 'tpope/vim-commentary' " https://github.com/tpope/vim-commentary
	Plug 'mbbill/undotree' " https://github.com/mbbill/undotree#download-and-install
	Plug 'vim-airline/vim-airline' " https://github.com/vim-airline/vim-airline
	Plug 'vim-airline/vim-airline-themes' " https://github.com/vim-airline/vim-airline-themes#vim-airline-themes--
	Plug 'romainl/vim-cool' " https://github.com/romainl/vim-cool
	Plug 'jiangmiao/auto-pairs' " https://github.com/jiangmiao/auto-pairs
	Plug 'matze/vim-move' " https://github.com/matze/vim-move
	Plug 'tpope/vim-repeat' "https://github.com/tpope/vim-repeat
	Plug 'frazrepo/vim-rainbow' " https://github.com/frazrepo/vim-rainbow
	Plug 'tpope/vim-surround' "https://github.com/tpope/vim-surround
	Plug 'tpope/vim-speeddating' "https://github.com/tpope/vim-speeddating
	Plug 'simeji/winresizer' "https://github.com/simeji/winresizer
    Plug 'mechatroner/rainbow_csv' "https://github.com/mechatroner/rainbow_csv
    Plug 'kana/vim-arpeggio' "https://github.com/kana/vim-arpeggio; https://www.vim.org/scripts/script.php?script_id=2425
    Plug 'liuchengxu/vim-which-key' "https://github.com/liuchengxu/vim-which-key#installation
    Plug 'mg979/vim-visual-multi', {'branch': 'master'} "https://github.com/mg979/vim-visual-multi
    Plug 'vim-autoformat/vim-autoformat' "https://github.com/vim-autoformat/vim-autoformat
    Plug 'ntpeters/vim-better-whitespace' "https://github.com/ntpeters/vim-better-whitespace
    Plug 'tommcdo/vim-exchange' "https://github.com/tommcdo/vim-exchange
call plug#end()

" enable rainbow brackets globally
let g:rainbow_active = 1

" dracula theme
" packadd! dracula
" syntax enable
" colorscheme dracula
" airline theme
let g:airline_theme='dracula'

" start NERDTree with cursor in it
" autocmd VimEnter * NERDTree

" Start NERDTree, unless a file or session is specified, eg. vim -S session_file.vim.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') && v:this_session == '' | NERDTree | endif

" winresize leader key set
" let g:winresizer_start_key = '<C-T>'

"keymap
nmap H ^
nmap L $

"basics
set number
set showmatch
set expandtab
set smartindent
set ignorecase " ignore case when searching
set smartcase " except when the query contains a capital letter
set noswapfile " disable swap files
exec 'set tabstop=4'
exec 'set textwidth=0'
exec 'set shiftwidth=4'
exec 'set softtabstop=4'

