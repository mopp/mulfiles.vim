"=============================================================================
" File: mulfiles.vim
" Author: mopp
" Created: 2014-06-22
"=============================================================================

scriptencoding utf-8

if exists('g:loaded_mulfiles')
    finish
endif
let g:loaded_mulfiles = 1

let s:save_cpo = &cpo
set cpo&vim


command! -nargs=* -complete=file OpenMulfs call mulfiles#open_files_std(<f-args>)
command! -nargs=* -complete=file OpenMulfsVert call mulfiles#open_files_vert(<f-args>)
command! -nargs=* -complete=file OpenMulfsTab call mulfiles#open_files_tab(<f-args>)


let &cpo = s:save_cpo
unlet s:save_cpo
