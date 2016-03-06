" ctrl p

let mapleader = ","
let g:ctrlp_map = '<Leader>t'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 0

let g:ctrlp_custom_ignore = {
  \ 'dir':  'node_modules$\|git$\|hg$\|svn$\|local$',
  \ 'file': 'exe\|so\|dll\|class'
  \ }

" move between buffers
nnoremap <C-n> :bnext<CR>
nnoremap <C-p> :bprevious<CR>

" move between split screens
noremap <C-l> <C-W>h
noremap <C-k> <C-W>j
noremap <C-h> <C-W>k
noremap <C-Space> <C-W>l
noremap <C-@> <C-Space>

" macvim
set go-=T

" style
set ignorecase                               " ignore case when searching
set nocompatible
set number
" set nowrap
set showmode
set tw=80
set shiftwidth=2
set softtabstop=2
set tabstop=2
set shiftround
set expandtab
set smarttab
set smartindent
set smartcase
" set ai
set incsearch " defaults for vim-simple
set hlsearch  " defaults for vim-simple
" set clipboard=unnamedplus,autoselect
" set completeopt=menuone,menu,longest
" set wildignore+=*\\tmp\\*,*.swp,*.swo,*.zip,.git,.cabal-sandbox
" set wildmode=longest,list,full
" set wildmenu
" set completeopt+=longest
" set t_Co=256
set cmdheight=1

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
" set statusline+=%h%m%r%w                     " status flags
" set statusline+=\[%{strlen(&ft)?&ft:'none'}] " file type
" set statusline+=%=                           " right align remainder
" set statusline+=0x%-8B                       " character value
" set statusline+=%-14(%l,%c%V%)               " line, character
" set statusline+=%<%P                         " file position
"
" haskell
" let g:haskell_indent_if = 3
" Reload
" map <silent> tu :call GHC_BrowseAll()<CR>
" syntastic
map <Leader>s :SyntasticToggleMode<CR>
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_disabled_filetypes=['html']

" ghc-mod

map <silent> tw :GhcModTypeInsert<CR>
map <silent> ts :GhcModSplitFunCase<CR>
map <silent> tq :GhcModType<CR>
map <silent> te :GhcModTypeClear<CR>

" auto-completion
let g:SuperTabDefaultCompletionType = '<c-x><c-o>'

if has("gui_running")
  imap <c-space> <c-r>=SuperTabAlternateCompletion("\<lt>c-x>\<lt>c-o>")<cr>
else " no gui
  if has("unix")
    inoremap <Nul> <c-r>=SuperTabAlternateCompletion("\<lt>c-x>\<lt>c-o>")<cr>
  endif
endif

let g:haskellmode_completion_ghc = 1
autocmd FileType haskell setlocal omnifunc=necoghc#omnifunc

" nerd tree
map <Leader>n :NERDTreeToggle<CR>

" tabular
let g:haskell_tabular = 1
nmap <Leader>a= :Tabularize /=<CR>
nmap <Leader>a; :Tabularize /::<CR>
nmap <Leader>a- :Tabularize /-><CR>

" theme
let g:solarized_termcolors=16
set background=dark
colorscheme solarized
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
autocmd BufWritePre * :call <SID>StripTrailingWhitespaces()
