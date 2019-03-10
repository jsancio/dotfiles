" Specify a directory for plugins
call plug#begin('~/.local/share/nvim/plugged')

Plug 'autozimu/LanguageClient-neovim', {
  \ 'branch': 'next',
  \ 'do': 'bash install.sh',
  \ }

Plug 'cespare/vim-toml'
"Plug 'ctrlpvim/ctrlp.vim'
"Plug 'majutsushi/tagbar'
"Plug 'iCyMind/NeoSolarized'
Plug 'lifepillar/vim-solarized8'
Plug 'rust-lang/rust.vim'
Plug 'terryma/vim-expand-region'
"Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
"Plug 'junegunn/fzf.vim'
Plug 'lotabout/skim', { 'dir': '~/.skim', 'do': './install' }
Plug 'lotabout/skim.vim'

Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-vinegar'

" Initialize plugin system
call plug#end()

" Config rust-vim {{{
let g:rustfmt_autosave = 1
" }}}

" Enable Solarized color scheme {{{
set termguicolors
set background=dark
colorscheme solarized8
" }}}

" Configure CtrlP {{{
" TODO: remove this once I am happy with fzf
let g:ctrlp_user_command = {
  \ 'types': {
    \ 1: ['.git', 'cd %s && git ls-files']
    \ },
  \ 'fallback': 'find %s -type f'
  \ }
let g:ctrlp_use_caching = 0
" }}}

" Configure skim {{{
nnoremap <C-p> :Files<CR>
nnoremap <C-v> :Buffers<CR>

let g:fzf_layout = { 'down': '~20%' }
" }}}

" Start Language Server Protocol configuration {{{
let g:LanguageClient_serverCommands = {
  \ 'rust': ['rustup', 'run', 'stable', 'rls'],
  \ }

let g:LanguageClient_diagnosticsEnable = 0

let g:LanguageClient_autostart = 1
noremap <silent> H :call LanguageClient_textDocument_hover()<CR>
noremap <silent> Z :call LanguageClient_textDocument_definition()<CR>
noremap <silent> R :call LanguageClient_textDocument_rename()<CR>
noremap <silent> S :call LanguageClient_textDocument_documentSymbol()<CR>
" }}}

" Disable arrow keys in Escape mode {{{
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
" }}}
