" Preamble
set nocompatible
filetype off
set encoding=utf-8

" Plugins
call plug#begin(stdpath('data') . 'plugs')

Plug 'mhartington/oceanic-next'
Plug 'prabirshrestha/async.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'srstevenson/vim-picker'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-dadbod'
Plug 'elixir-editors/vim-elixir', {'for': 'elixir'}
Plug 'mhinz/vim-mix-format', {'for': 'elixir'}

call plug#end()

" Theme
colorscheme OceanicNext

" General
syntax  on
filetype plugin indent on
set showmode
set tabstop=2
set shiftwidth=2
set expandtab
set backspace=indent,eol,start
set autoindent
set copyindent
set showmatch

set cursorline
set smarttab
set splitbelow
set splitright

set scrolloff=2

set hidden

set number relativenumber
augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

set t_Co=256

set mouse=a

set nobackup
set noswapfile

set ruler

augroup updatebuffer
	au FocusLost,WinLeave * :silent! wa
	au FocusGained,BufEnter * :silent! !
augroup END

" newtr
let g:netrw_liststyle = 3
let g:netrw_banner = 0

" Elixir
let g:mix_format_on_save = 1

" Vim Picker
nnoremap <unique> <C-p> <Plug>(PickerEdit)
nnoremap <unique> <C-p>h <Plug>(PickerSplit)
nnoremap <unique> <C-p>t <Plug>(PickerTabedit)
nnoremap <unique> <C-p>v <Plug>(PickerVsplit)

" Key Mappings
nnoremap <esc> :noh<cr>

nnoremap <C-j>  <C-w><C-j>
nnoremap <C-k>  <C-w><C-k>
nnoremap <C-l>  <C-w><C-l>
nnoremap <C-h>  <C-w><C-h>

