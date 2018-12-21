filetype on

""" Plugins
call plug#begin()

Plug 'w0rp/ale'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-commentary'
Plug 'michaeljsmith/vim-indent-object'
Plug 'tpope/vim-surround'
Plug 'alfredodeza/pytest.vim'

call plug#end()

let mapleader=" "

""" Plugin settings
"" Auto-pairs
let g:AutoPairsMultilineClose = 0

"" Ale
let g:ale_sign_column_always = 1
let g:ale_completion_enabled = 1
let g:ale_linters_explicit = 1
let g:ale_linters = {'python': ['pyflakes', 'mypy', 'pyls']}
let g:ale_fix_on_save = 1
let g:ale_fixers = {'python': ['black', 'isort']}
let g:ale_python_mypy_options = "--ignore-missing-imports"

"" Pytest
nmap <Leader>f :Pytest function<enter>
nmap <Leader>vf :Pytest function verbose<enter>
" Allow debugger to run (when breakpoints are set)
nmap <Leader>df :Pytest function -s<enter>
nmap <Leader>i :Pytest file<enter>
nmap <Leader>vi :Pytest file verbose<enter>
nmap <Leader>p :Pytest project<enter>
nmap <Leader>vp :Pytest project verbose<enter>



" Jump to errors
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)

""" Editor settings

tnoremap <Esc> <C-\><C-n>

set number
set relativenumber

set ignorecase
set smartcase

syntax on
set tabstop=4
set shiftwidth=4
set noexpandtab
filetype plugin indent on

set nohlsearch


""" Buffers, windows, tabs
" Split settings
set splitbelow
set splitright

" Split buffers navigating
nnoremap <Leader>j <C-W><C-J>
nnoremap <Leader>k <C-W><C-K>
nnoremap <Leader>l <C-W><C-L>
nnoremap <Leader>h <C-W><C-H>

" Buffer navigation
nnoremap <Leader>e :ls<CR>:b<Space>
map <Leader>a :e#<return>

nnoremap <silent><Leader>. :vertical resize +5<enter>
nnoremap <silent><Leader>, :vertical resize -5<enter>


""" Filetype specific
:au BufWrite *.* :let _s=@/|:%s/\s\+$//e|:let @/=_s

"" Python
au FileType python set tabstop=4 shiftwidth=4 expandtab
au FileType python nnoremap <Leader>b obreakpoint()<esc>

"" Cfg
au FileType cfg set tabstop=4 shiftwidth=4 expandtab

"" HTML
autocmd FileType html set tabstop=2 shiftwidth=2 expandtab
au BufEnter *.css set nocindent
au BufLeave *.css set cindent

"" Javascript
autocmd FileType javascript set tabstop=2 shiftwidth=2 expandtab
autocmd BufNewFile,BufRead,BufNew *.md set filetype=markdown

"" Markdown
autocmd FileType markdown set tabstop=4 shiftwidth=4 noexpandtab textwidth=69 formatoptions=t2n autoindent tw=69 fo=tn

""" Spell check
" Eglish
map spe :set spelllang=en_us <bar> set spell<return>
" Czech
map spc :set spelllang=cs <bar> set spell<return>
" Off
map spn :set nospell<return>


""" Visual
colorscheme mykalisi
set background=dark

" Airline settings
set t_Co=256
let g:airline_theme='murmur'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 0
let g:airline_left_sep = ''
let g:airline_right_sep = ''
