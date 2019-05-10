"" Ale
let g:ale_sign_column_always = 1
let g:ale_completion_enabled = 1
let g:ale_linters_explicit = 1
let g:ale_linters = {'python': ['pyflakes', 'mypy', 'pyls']}
let g:ale_fix_on_save = 1
let g:ale_fixers = {'python': ['black', 'isort']}
let g:ale_python_mypy_options = "--ignore-missing-imports --namespace-packages --python-version 3.7"

" Jump to errors
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)

"" Pytest
nmap <Leader>vf :Pytest function verbose<enter>
" Allow debugger to run (when breakpoints are set)
nmap <Leader>df :Pytest function -s<enter>
nmap <Leader>i :Pytest file<enter>
nmap <Leader>vi :Pytest file verbose<enter>
nmap <Leader>p :Pytest project<enter>
nmap <Leader>vp :Pytest project verbose<enter>

"" Python
au FileType python set tabstop=4 shiftwidth=4 expandtab
au FileType python nnoremap <Leader>b obreakpoint()<esc>

"" Cfg
au FileType cfg set tabstop=4 shiftwidth=4 expandtab
