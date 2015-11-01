" ctrl p
let mapleader = ","
let g:ctrlp_map = '<Leader>t'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 0

let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll|class)$'
  \ }

" movement in colemak
" inoremap hk <Esc>
" noremap k j
" noremap h k
" noremap l h
" imap hk <Esc>
" map k <Down>
" map h <Up>
" map l <Left>

" move between buffers
nnoremap <C-n> :bnext<CR>
nnoremap <C-p> :bprevious<CR>

" move between split screens
noremap <C-l> <C-W>h
noremap <C-k> <C-W>j
noremap <C-h> <C-W>k
noremap <C-Space> <C-W>l
noremap <C-@> <C-Space>

" settings
set ignorecase                               " ignore case when searching

" macvim
set go-=T

" pathogen
execute pathogen#infect()
syntax on
filetype plugin indent on

" ScrollColors          https://github.com/vim-scripts/ScrollColors
" crtlp.vim             https://github.com/kien/ctrlp.vim
" vim-sensible          https://github.com/tpope/vim-sensible
" vim-colorschemes      https://github.com/flazz/vim-colorschemes
" VimClojure            https://github.com/vim-scripts/VimClojure

" clojure
let g:vimclojure#HighlightBuiltins = 1
let g:vimclojure#ParenRainbow

set nu
set laststatus=2
set statusline=
set statusline+=%-10.3n\                     " buffer number
set statusline+=%f\                          " filename
set statusline+=%h%m%r%w                     " status flags
set statusline+=\[%{strlen(&ft)?&ft:'none'}] " file type
set statusline+=%=                           " right align remainder
set statusline+=0x%-8B                       " character value
set statusline+=%-14(%l,%c%V%)               " line, character
set statusline+=%<%P                         " file position

" haskell
let g:haskell_indent_if = 3
" Reload
" map <silent> tu :call GHC_BrowseAll()<CR>
" Type Lookup
map <silent> <Leader>w :GhcModType<CR>
map <silent> <Leader>q :GhcModTypeClear<CR>

" style
set shiftwidth=2
set softtabstop=2
set tabstop=2
set shiftround
set expandtab
set ai
set incsearch " defaults for vim-simple
set hlsearch  " defaults for vim-simple

" theme
colorscheme doriath
" set guifont=Source\ Code\ Pro:h14

fun! TrimWhitespace()
    let l:save_cursor = getpos('.')
    %s/\s\+$//e
    call setpos('.', l:save_cursor)
endfun

fun! <SID>StripTrailingWhitespaces()
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
endfun
autocmd BufWritePre * :call TrimWhitespace()
