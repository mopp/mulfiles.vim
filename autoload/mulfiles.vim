"=============================================================================
" File: mulfiles.vim
" Author: mopp
" Created: 2014-06-22
"=============================================================================

scriptencoding utf-8

if !exists('g:loaded_mulfiles')
    runtime! plugin/mulfiles.vim
endif
let g:loaded_mulfiles = 1

let s:save_cpo = &cpo
set cpo&vim


function! mulfiles#open_files_tab(...)
    call mulfiles#open_files('tab split', 'tabnew', a:000)
endfunction


function! mulfiles#open_files_std(...)
    call mulfiles#open_files('belowright split', 'belowright new', a:000)
endfunction


function! mulfiles#open_files_vert(...)
    call mulfiles#open_files('vertical rightbelow split', 'vertical new', a:000)
endfunction


function! mulfiles#open_files(open_cmd, no_args_open_cmd, files)
    let len = len(a:files)
    if(len == 0)
        execute a:no_args_open_cmd
        return
    endif

    for i in range(len)
        execute a:open_cmd a:files[i]
    endfor
endfunction


let &cpo = s:save_cpo
unlet s:save_cpo
