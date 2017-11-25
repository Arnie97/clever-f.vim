if exists('*strchars')
    function! clever_f#helper#strchars(str) abort
        return strchars(a:str)
    endfunction
else
    function! clever_f#helper#strchars(str) abort
        return strlen(substitute(a:str, '.', 'x', 'g'))
    endfunction
endif

function! clever_f#helper#include_multibyte_char(str) abort
    return strlen(a:str) != clever_f#helper#strchars(a:str)
endfunction

if exists('*xor')
    function! clever_f#helper#xor(a, b) abort
        return xor(a:a, a:b)
    endfunction
else
    function! clever_f#helper#xor(a, b) abort
        return a:a && !a:b || !a:a && a:b
    endfunction
endif
