" Put description here!!!
" Last Change:  2020 Jan 31
" Maintainer:   Rafał Camlet <raf.camlet@gmail.com>
" License:      GNU General Public License v3.0

if exists('g:loaded_wpaTrainer') | finish | endif " prevent loading file twice

let s:save_cpo = &cpo
set cpo&vim

hi def link wpmTrainerHeader      Number
hi def link  wpmTrainerSubHeader   Identifier
" hi WhidCursorLine ctermbg=238 cterm=none

command! WpmTrainer lua require'wpmTrainer.init'.setup()

let &cpo = s:save_cpo
unlet s:save_cpo

let g:loaded_wpaTrainer = 1
