" Theme available at:
" https://raw.githubusercontent.com/reedes/vim-colors-pencil/master/colors/pencil.vim
colorscheme pencil
set background=light

"" Markdown
autocmd FileType markdown set tabstop=4 shiftwidth=4 noexpandtab textwidth=80 autoindent fo=t2n cocu=nc

let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_no_default_key_mappings = 1
let g:pencil_higher_contrast_ui = 1
let g:airline_theme = 'pencil'
