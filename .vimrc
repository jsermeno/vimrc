" vim-plug
call plug#begin('~/.vim/plugged')
Plug 'sbdchd/neoformat'
Plug 'plasticboy/vim-markdown'
Plug 'tpope/vim-sensible'
Plug 'flazz/vim-colorschemes'
Plug 'kien/ctrlp.vim'
Plug 'xolox/vim-misc'
Plug 'xolox/vim-colorscheme-switcher'
Plug 'Taverius/vim-colorscheme-manager'
call plug#end()

runtime! plugin/colorscheme-manager.vim
runtime! plugin/sensible.vim

" ctrlp
let mapleader = ","
let g:ctrlp_map = '<Leader>t'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 0

let g:ctrlp_custom_ignore = {
  \ 'dir':  'node_modules$\|git$\|hg$\|svn$\|local$',
  \ 'file': '^exe\|^so\|^dll\|^class'
  \ }

" mappings for vim-colorscheme-switcher
map <F9> :PrevColorScheme<CR>
let g:colorschemeManagerLast = 1

" style
set ignorecase          " ignore case when searching
set smartcase           " search with case when pattern contains an uppercase letter
set nocompatible
set number
set showmode
set shiftround
set smarttab
set autoindent
set smartindent
set incsearch
set hlsearch
set indentexpr= " Causes poor indentation behavior in YAML files
set cmdheight=1

" wrapping
set textwidth=0
set wrapmargin=0
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab

" status
set laststatus=2
set statusline=
set statusline+=%-10.3n\                     " buffer number
set statusline+=%f\                          " filename
set statusline+=%-14(%l,%c%V%)               " line, character
set statusline+=%<%P                         " file position

" plastic-boy plugin
let g:vim_markdown_folding_style_pythonic = 1

" theme
set background=dark
colorscheme synic

" strip trailing whitespace
fun! <SID>StripTrailingWhitespaces()
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
endfun

" strip trailing whitespace on save
autocmd BufWritePre * :call <SID>StripTrailingWhitespaces()

" autoformat on save
autocmd BufWritePre *.css Neoformat
