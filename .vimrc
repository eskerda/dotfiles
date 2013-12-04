"This is my first VIM configuration file
"DO NOT FUCKING TAKE any VIM configuration file from the internet and just put
"it here, KNOW what your configuration is doing

set nocompatible "Do not make vim vi compatible
set wildmenu
set backup
"The double slash // uses the absolute path hence it'll be the same editing
"~/.something as /home/foo/.something for .swp and ~ files
set backupdir=~/.vim/backup//
set directory=~/.vim/tmp//

"Pathogen, Syntax and highlighting
runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()
execute pathogen#helptags()
syntax on
filetype indent plugin on
set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim
autocmd ColorScheme * highlight SpecialKey ctermfg=black ctermbg=237
autocmd ColorScheme * highlight CursorLineNr ctermfg=white ctermbg=237
colorscheme Sunburst

"Visual stuff
"set colors for a dark background
"show line numbers
"show current line
set background=dark
set number
set cursorline
set colorcolumn=80
set laststatus=2 "Always display cmdline
set t_Co=256
set encoding=utf-8
set scrolloff=3

"Indentation stuff
"Usually, What I would like is
" - Spaces and not tabs
" - Autoindent on enter
" - AutoJump on 79 chars when on comment blocks
" - Use 4 spaces
" - Indent block?
set shiftwidth=4
set softtabstop=4
set tabstop=4
"set textwidth=79
set smarttab
set expandtab
set autoindent
:let g:detectindent_preferred_expandtab = 1
:let g:detectindent_preferred_indent = 4

"Highlight trailing whitespace and tab.
set list
set listchars=tab:▶·,trail:·
"match ErrorMsg '\s\+$' "This works too, but listchars is nicer
"This shit is for testing: 		      		

"Search stuff
set showmatch
set hlsearch
set incsearch
set ignorecase

" <Ctrl-l> redraws the screen and removes any search highlighting.
nnoremap <silent> <C-l> :nohl<CR><C-l>
":autocmd BufReadPost * :DetectIndent
