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
        " usage:
        " select words using Ctrl-N
        " create cursors vertically with Ctrl-Down/Up
        " select one character at a time with Shift-Arrows
        " press n/N to get next/previous occurence
        " press q to skip current and get next occurence
        " press Q to remove current cursor/selection
        " start insert mode with i, a, I, A
        " press tab to switch between <<cursor>> and <<extended>> mode
    Plug 'vim-autoformat/vim-autoformat' "https://github.com/vim-autoformat/vim-autoformat
    Plug 'ntpeters/vim-better-whitespace' "https://github.com/ntpeters/vim-better-whitespace
    Plug 'tommcdo/vim-exchange' "https://github.com/tommcdo/vim-exchange
    Plug 'inkarkat/vim-ingo-library'
    Plug 'inkarkat/vim-SearchPosition'
    Plug 'VonHeikemen/searchbox.nvim'
    Plug 'svermeulen/vim-yoink' "https://github.com/svermeulen/vim-yoink/tree/89ed6934679fdbc3c20f552b50b1f869f624cd22
        " usage:
        " commands:
        "   :Yanks - show yank history
        "   :ClearYanks - delete history/reduces the histroy down to 1 entry
        "   see more at: https://www.youtube.com/watch?v=uKVLpZH79IQ
        " see the keymap settings below
    Plug 'ervandew/supertab' "https://github.com/ervandew/supertab
    Plug 'ap/vim-css-color' "https://github.com/ap/vim-css-color
    Plug 'justinmk/vim-sneak' " https://github.com/justinmk/vim-sneak
        " Sneak is invoked with `s` followed by exactly 2 chars
        " s{char}{char}
        " type `sab` to move the cursor to the next instace of the text "ab"
        " type ; to jump to the next match
        " type ctrl-o or `` to go back to the starting point
call plug#end()

" enable rainbow brackets globally
let g:rainbow_active = 1

" dracula theme
" packadd! dracula
" colorscheme dracula
" airline theme
let g:airline_theme='dracula'

" plugin settings
" let g:airline#extensions#tabline#enabled = 1 " enable list of buffers

" start NERDTree with cursor in it
" autocmd VimEnter * NERDTree
" Start NERDTree, unless a file or session is specified, eg. vim -S session_file.vim.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') && v:this_session == '' | NERDTree | endif

" winresize leader key set
" let g:winresizer_start_key = '<C-T>'

let g:SuperTabDefaultCompletionType = "<c/n>"

" vim-move settings
" let g:move_key_modifier_visualmode
" let g:move_key_modifier = 'S'

"keymap
let mapleader = " "
    map <leader>t :NERDTreeToggle<CR>
nnoremap H ^
nnoremap L $
nnoremap J L
nnoremap K H
" plugins keymap
" vim/move
let g:move_key_modifier = '`'

" yoink
nmap [p <plug>(YoinkPostPasteSwapBack)
nmap ]p <plug>(YoinkPostPasteSwapForward)
nmap p <plug>(YoinkPaste_p)
nmap P <plug>(YoinkPaste_P)
nmap gp <plug>(YoinkPaste_gp)
nmap gP <plug>(YoinkPaste_gP)
nmap [y <plug>(YoinkRotateBack)
nmap ]y <plug>(YoinkRotateForward)
nmap <c-=> <plug>(YoinkPostToggleFormat)

"general settings
set number
set showmatch
set expandtab
set smartindent
set hlsearch "highlight search
set ignorecase " ignore case when searching
set smartcase " except when the query contains a capital letter
set noswapfile " disable swap files
set showcmd "show leader key for the duration of the timeout
syntax enable
exec 'set tabstop=4'
exec 'set textwidth=0'
exec 'set shiftwidth=4'
exec 'set softtabstop=4'
