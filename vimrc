runtime bundle/pathogen/autoload/pathogen.vim
call pathogen#infect()

set ruler

set autoindent
set smartindent
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

" Enable python syntax highlighting
let python_highlight_all = 1

" Enable Solarized
syntax enable
set background=dark
colorscheme solarized

" Run flake8 anytime a python file is saved
autocmd BufWritePost *.py call Flake8()

" Ignore some flake8 errors and warnings
let g:flake8_ignore="E111,E501"

" Match any character whose position is greater than 100
autocmd Syntax * syn match ErrorMsg /\%100v.\+/

" Match trailing whitespaces
autocmd Syntax * syn match ErrorMsg /\s\+$/

" Auto-clean fugitive buffers
autocmd BufReadPost fugitive://* set bufhidden=delete

" Add git branch to the status line
set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P
