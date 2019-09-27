"" Python
au FileType python set tabstop=4 shiftwidth=4 expandtab
au FileType python nnoremap <Leader>b obreakpoint()<esc>

"" Cfg
au FileType cfg set tabstop=4 shiftwidth=4 expandtab

nnoremap <F6> :w<Enter>:! ~/work/scripts/local_dispatch.sh<Enter><Enter>
