" Gotta be first
set nocompatible
set mouse=a

filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'bling/vim-airline'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'scrooloose/syntastic'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-easytags'
Plugin 'majutsushi/tagbar'
Plugin 'kien/ctrlp.vim'
Plugin 'vim-scripts/a.vim'
Plugin 'davidhalter/jedi-vim'
Plugin 'Valloric/YouCompleteMe'

" ----- Working with Git ----------------------------------------------
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'


Plugin 'ntpeters/vim-better-whitespace'

:autocmd BufReadPre,BufNewFile * let b:did_ftplugin = 1

syntax on
filetype plugin indent on
set expandtab
set tabstop=4
" set shiftwidth=4
" set expandtab
" set expandtab
" set ts=2 sw=2 expandtab

" General
set backspace=indent,eol,start
set ruler
set number
set showcmd
set incsearch
set hlsearch

if !exists('g:airline_symbols')
      let g:airline_symbols = {}
  endif

let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'


set mouse=a

" All of your Plugins must be added before the following line
call vundle#end()            " required

" let g:airline_powerline_fonts = 1
let g:airline_powerline_fonts = 1

nmap <silent> <leader>t :NERDTreeTabsToggle<CR>
" To have NERDTree always open on startup
let g:nerdtree_tabs_open_on_console_startup = 0

nnoremap <C-S-TAB> :tabprevious<CR>

noremap <silent> k gk
noremap <silent> j gj
noremap <silent> 0 g0
noremap <silent> $ g$
noremap <silent> ^ g^
noremap <silent> _ g_

" ----- scrooloose/syntastic settings -----
let g:syntastic_error_symbol = '✘'
let g:syntastic_warning_symbol = "▲"
augroup mySyntastic
	au!
	au FileType tex let b:syntastic_mode = "passive"
augroup END

" ----- airblade/vim-gitgutter settings -----
"  " Required after having changed the colorscheme
hi clear SignColumn
" In vim-airline, only display hunks if the diff is non-zero
" let g:airline#extensions#hunks#non_zero_only = 1

set laststatus=2
