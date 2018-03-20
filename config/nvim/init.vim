" Specify a directory for plugins
call plug#begin('~/.local/share/nvim/plugged')

Plug 'ctrlpvim/ctrlp.vim'

Plug 'altercation/vim-colors-solarized'

Plug 'terryma/vim-expand-region'

Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-vinegar'

" Initialize plugin system
call plug#end()


" Enable Solarized color scheme
set background=dark
colorscheme solarized

" Configure CtrlP
let g:ctrlp_user_command = {
  \ 'types': {
    \ 1: ['.git', 'cd %s && git ls-files']
    \ },
  \ 'fallback': 'find %s -type f'
  \ }
let g:ctrlp_use_caching = 0
