if exists('g:loaded_mdpop') | finish | endif
let g:loaded_mdpop = 1

" Colorschemes clear highlights on load; re-apply ours afterwards.
augroup mdpop
  autocmd!
  autocmd ColorScheme * call mdpop#apply()
augroup END
