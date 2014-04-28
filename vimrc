runtime bundle/vim-pathogen/autoload/pathogen.vim
filetype off

call pathogen#infect()
call pathogen#helptags()

filetype plugin indent on

" Enable syntax highlighting
syntax enable

set ruler

set autoindent
set smartindent
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set tags=/Users/jose/Work/tags

" Remove all scrollbars, menubar and toolbar
set guioptions-=L
set guioptions-=r
set guioptions-=m
set guioptions-=T

" Enable python syntax highlighting
let python_highlight_all = 1

" Enable Solarized
set background=light
"let g:solarized_termcolors = 256
"let g:solarized_visibility = "high"
"let g:solarized_contrast = "high"
colorscheme solarized

" Use the 16 colors terminal option to get VIM to look like GVIM with
" solarized colors.
"set t_Co=16

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

" Configure CtrlP
let g:ctrlp_map = ';'
let g:ctrlp_cmd = 'CtrlP'

let g:ctrlp_working_path_mode = 'ra'

let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(class|so)$',
  \ }

" Configure NerdTree
nmap \e :NERDTreeToggle<CR>

" Note options
let g:notes_directories = ['~/Documents/Notes']

