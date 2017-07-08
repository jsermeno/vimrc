function! neoformat#formatters#css#enabled() abort
    return ['prettier']
endfunction

function! neoformat#formatters#css#prettier() abort
    return {
        \ 'exe': 'prettier',
        \ 'args': ['--stdin', '--parser', 'postcss'],
        \ 'stdin': 1
        \ }
endfunction
