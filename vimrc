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

" Enable Solarized
set background=dark
"let g:solarized_termcolors = 256
"let g:solarized_visibility = "high"
"let g:solarized_contrast = "high"
colorscheme solarized

" Use the 16 colors terminal option to get VIM to look like GVIM with
" solarized colors.
"set t_Co=16

" Match any character whose position is greater than 100
autocmd Syntax * syn match ErrorMsg /\%100v.\+/

" Match trailing whitespaces
autocmd Syntax * syn match ErrorMsg /\s\+$/

" Auto-clean fugitive buffers
autocmd BufReadPost fugitive://* set bufhidden=delete

" Add git branch to the status line
set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P

" Configure CtrlP
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . -co --exclude-standard', 'find %s -type f']
let g:ctrlp_use_caching = 0

" Configure NerdTree
nmap \e :NERDTreeToggle<CR>

" Note options
let g:notes_directories = ['~/Documents/Notes']

" Python configurations
let g:pymode = 1
let g:pymode_trim_whitespaces = 1
let g:pymode_options = 1

" Some customization
let mapleader = "\<space>"

" Quick open and save
nnoremap <Leader>o :CtrlP<CR>
nnoremap <Leader>w :w<CR>

" Copy and paste from clipboard
vmap <Leader>y "+y
vmap <Leader>d "+d
nmap <Leader>p "+p
nmap <Leader>P "+P
vmap <Leader>p "+p
vmap <Leader>P "+P

" Region Expand
vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)
