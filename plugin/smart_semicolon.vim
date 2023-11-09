if exists('g:loaded_smart_semicolon')
    finish
endif
let g:loaded_smart_semicolon = 1

function! s:InitVariable(var, value)
    let g:[a:var] = get(g:, a:var, a:value)
endfunction

call s:InitVariable('smart_semicolon_filetypes', [
    \ 'c',
    \ 'cpp',
    \ 'cs',
    \ 'cuda',
    \ 'hlsl',
    \ 'glsl',
    \ 'css'])

augroup smart_semicolon
    execute 'autocmd FileType '
        \ . join(g:smart_semicolon_filetypes, ',')
        \ . ' inoremap <silent> <buffer> ; <C-R>=smart_semicolon#insert()<CR>'
augroup END
