" Specify a directory for plugins {{{
call plug#begin('~/.local/share/nvim/plugged')

Plug 'cespare/vim-toml'
Plug 'junegunn/gv.vim'
Plug 'lifepillar/vim-solarized8'
Plug 'liuchengxu/vim-which-key'
Plug 'lotabout/skim', { 'dir': '~/.skim', 'do': './install' }
Plug 'lotabout/skim.vim'
Plug 'mhinz/vim-signify'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'roxma/vim-tmux-clipboard'
Plug 'rust-lang/rust.vim'
Plug 'terryma/vim-expand-region'

Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-rhubarb'
Plug 'tpope/vim-vinegar'
Plug 'tpope/vim-commentary'

" Initialize plugin system
call plug#end()
" }}}

" Config rust-vim {{{
let g:rustfmt_autosave = 1
" }}}

" Enable Solarized color scheme {{{
set termguicolors
set background=dark
colorscheme solarized8
" }}}

" Configure fzf {{{
nnoremap <C-p> :Files<cr>
nnoremap <C-v> :Buffers<cr>

let g:fzf_layout = { 'down': '~20%' }
" }}}

" Disable arrow keys in Escape mode {{{
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
" }}}


source $HOME/.config/nvim/coc.vim
source $HOME/.config/nvim/vim-which-key.vim
