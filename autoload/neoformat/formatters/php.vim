function! neoformat#formatters#php#enabled() abort
    return ['php_beautifier']
endfunction

function! neoformat#formatters#php#php_beautifier() abort
    return {
        \ 'exe': 'php_beautifier',
        \ 'args': ['--indent_spaces'],
        \ 'stdin': 1
        \ }
endfunction
