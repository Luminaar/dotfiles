filetype on

""" Plugins
call plug#begin()

Plug 'w0rp/ale'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-commentary'
Plug 'jeetsukumaran/vim-pythonsense'
Plug 'tpope/vim-surround'
Plug 'alfredodeza/pytest.vim'
Plug 'udalov/kotlin-vim'
Plug '~/.fzf'
Plug 'junegunn/fzf.vim'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'

call plug#end()

let mapleader=" "

""" Plugin settings
"" Auto-pairs
let g:AutoPairsMultilineClose = 0


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

set path+=**


""" Buffers, windows, tabs
" Split settings
set splitbelow
set splitright

" Split buffers navigating
nnoremap <Leader>j <C-W><C-J>
nnoremap <Leader>k <C-W><C-K>
nnoremap <Leader>l <C-W><C-L>
nnoremap <Leader>h <C-W><C-H>

nnoremap th :tabp<CR>
nnoremap tl :tabn<CR>

" Buffer navigation
nnoremap <Leader>f :Buffers<return>
map <Leader>a :e#<return>
map <Leader>e :FZF<return>

nnoremap <silent><Leader>. :vertical resize +5<enter>
nnoremap <silent><Leader>, :vertical resize -5<enter>

" netrw config
let g:netrw_banner = 0




""" Filetype specific
:au BufWrite *.* :let _s=@/|:%s/\s\+$//e|:let @/=_s


"" HTML
autocmd FileType html set tabstop=2 shiftwidth=2 expandtab
au BufEnter *.css set nocindent
au BufLeave *.css set cindent

"" Javascript
autocmd FileType javascript set tabstop=2 shiftwidth=2 expandtab
autocmd BufNewFile,BufRead,BufNew *.md set filetype=markdown

"" Conf file
au BufNewFile,BufRead *.conf set filetype=hocon
autocmd FileType hocon set tabstop=2 shiftwidth=2 expandtab
autocmd FileType hocon set cindent


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
