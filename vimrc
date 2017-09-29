"Pathogen""
execute pathogen#infect()

"Solarized"
":let g:solarized_termcolors=256"
":let g:solarized_contrast = "high""
":let g:solarized_visibility= "high""
":syntax on"
":set background=dark"
":colorscheme solarized"
syntax on
let g:solarized_termtrans = 1
set background=dark
colorscheme solarized

"Molokai"
"set t_Co=256
":syntax on
":color molokai

"Gruvbox"
":syntax on"
":set background=dark"
":color gruvbox"

"Syntastic"
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
"
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
"
"let g:syntastic_auto_jump = 2
"let g:syntastic_enable_highlighting = 1
"
"Airline"
let g:airline#extensions#syntastic#enabled = 1

"Settings"

:set number "set line numbers
:set ruler  "show line number and column number on status bar
:set cursorline  "highlights line you are on
:set nowrap     "display long lines as one line
:set tabstop=2  "number of visual spaces per tab
:set laststatus=2
:set wildmenu
:set ignorecase
set noeb  "no error bell
set novb  "no visual bell
":set autoindent and smartindent
set ai
set si
set backspace=indent,eol,start
set nocompatible
imap jk <Esc>
map <F7> mzgg=G`z
imap jj <Esc>:w<cr>
imap ;; <Esc>:wq<cr>
set hlsearch
":set smartindent
:set showmatch
:set mouse=a
":set foldmethod=syntax
":set foldnestmax=1
":set foldlevelstart=20
:set hlsearch
set incsearch "search as character are inserted
:set expandtab "set tab to spaces
:set smarttab
:set shiftwidth=2

autocmd BufWritePre * :%s/\s\+$//e  "removes trailing white spaces
autocmd FileType make setlocal noexpandtab

if has("autocmd")
    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['black',       'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]

let g:rbpt_max = 16

let g:rbpt_loadcmd_toggle = 0

"au VimEnter * RainbowParenthesesToggle
