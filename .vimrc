if $TERM == "xterm-256color" || $TERM == "screen-256color" || $COLORTERM == "gnome-terminal"
	set t_Co=256
endif

execute pathogen#infect()
nmap k gk
nmap j gj
nmap \l :setlocal number!<CR>
nmap \q :nohlsearch<CR>
nmap <C-e> :e#<CR>
nmap ; :CtrlP<CR>
nmap \e :NERDTreeToggle<CR>
imap <C-c> <Esc>

let g:indentLine_color_term = 255

let g:syntastic_error_symbol = '✗'
let g:syntastic_warning_symbol = '!'

color 0x7A69_dark

autocmd Filetype tex setl updatetime=1
let g:livepreview_previewer = 'open -a Preview'


set nocompatible " be IMproved, required
set incsearch
set ignorecase
set smartcase
set hlsearch
set number

filetype off " required

filetype plugin indent on
filetype plugin on


" enable 256 colors in GNOME terminal (for my Ubuntu VM)
if $COLORTERM == 'gnome-terminal'
    set t_Co=256
endif

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif


" turn on language specific syntax highlighting
syntax on

set expandtab
set shiftwidth=2
set softtabstop=2


nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

" Highlight Arduino stuff
autocmd BufNewFile,BufReadPost *.ino,*.pde set filetype=cpp
