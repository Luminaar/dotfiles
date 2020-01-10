"" Python
au FileType python set tabstop=4 shiftwidth=4 expandtab
au FileType python nnoremap <Leader>b obreakpoint()<esc>

"" Cfg
au FileType cfg set tabstop=4 shiftwidth=4 expandtab

nnoremap <F6> :w<Enter>:! ~/work/scripts/local_dispatch.sh<Enter><Enter>

function! Tab_Or_Complete()
  if col('.')>1 && strpart( getline('.'), col('.')-2, 3 ) =~ '^\w' || pumvisible()
    return "\<C-N>"
  else
    return "\<Tab>"
  endif
endfunction
inoremap <buffer> <Tab> <C-R>=Tab_Or_Complete()<CR>
inoremap <buffer> <S-Tab> <C-P>

