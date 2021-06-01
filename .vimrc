"vim-plug:
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()
Plug 'preservim/nerdcommenter'
Plug 'wakatime/vim-wakatime'
Plug 'lambdalisue/lista.nvim'
Plug 'scrooloose/nerdtree'
call plug#end()

nmap H ^
namp L $

set number
set showmatch
set hls
set backspace=indent,eol,start
set ve+=onemore
set autoindent
set noexpandtab
set smartindent
exec 'set tabstop=3'
exec 'set textwidth=0'
exec 'set shiftwidth=3'
exec 'set softtabstop=3'

if has('unnamedplus')
	set clipboard+=unnamedplus
else
	set clipboard=unnamed
endif

let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

filetype plugin on
