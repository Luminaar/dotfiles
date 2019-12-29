filetype on

""" Plugins
call plug#begin()

"" Visual
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'mhartington/oceanic-next'

"" Development
Plug '~/.fzf'
Plug 'junegunn/fzf.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'

"" Python
" Code formatting
Plug 'psf/black'

" Import sort
Plug 'stsewd/isort.nvim', { 'do': ':UpdateRemotePlugins' }

" Intellisense
Plug 'ncm2/ncm2'
Plug 'ncm2/ncm2-jedi'

" Call signatures, documentation, usages and go-to assignments
Plug 'davidhalter/jedi-vim'

" Asynchronous linting (pylint, mypy)
Plug 'roxma/nvim-yarp'
Plug 'neomake/neomake'

" Python text objects
Plug 'jeetsukumaran/vim-pythonsense'

" Semantic highlighting
Plug 'numirias/semshi'

"" Other languages
Plug 'udalov/kotlin-vim'
Plug 'cespare/vim-toml'
Plug 'plasticboy/vim-markdown'

call plug#end()

""" Plugin settings
"" Semshi
let g:semshi#mark_selected_nodes = 0
let g:semshi#error_sign	= v:false

"" Neomake
call neomake#configure#automake('nrwi', 500)
let g:neomake_python_enabled_makers = ['pylint', 'mypy']

"" Jedi-vim
let g:jedi#auto_initialization = 1
let g:jedi#completions_enabled = 0
let g:jedi#auto_vim_configuration = 0
let g:jedi#smart_auto_mappings = 0
let g:jedi#popup_on_dot = 0
let g:jedi#completions_command = ""
let g:jedi#show_call_signatures = "1"

"" Black
autocmd BufWritePre *.py execute ':Black'

"" Auto-pairs
let g:AutoPairsMultilineClose = 0


""" Editor settings
let g:python3_host_prog = "~/.config/nvim/venv/bin/python"
let mapleader=" "
nnoremap <leader>w :write<enter>
tnoremap <Esc> <C-\><C-n>

set number
set relativenumber

map <leader>nonu :set nonu norelativenumber<enter>:set signcolumn=no<enter>
map <leader>nu :set nu relativenumber<enter>:set signcolumn=yes<enter>

set ignorecase
set smartcase

syntax on
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


""" Filetype specific
:au BufWrite *.* :let _s=@/|:%s/\s\+$//e|:let @/=_s

"" HTML
autocmd FileType html set tabstop=2 shiftwidth=2 expandtab
au BufEnter *.css set nocindent
au BufLeave *.css set cindent

"" Yaml
autocmd FileType yaml set tabstop=2 shiftwidth=2 expandtab

"" Javascript
autocmd FileType javascript set tabstop=2 shiftwidth=2 expandtab

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
if (has("termguicolors"))
 set termguicolors
endif

" Theme
syntax enable
colorscheme OceanicNext

" Airline settings
set t_Co=256
let g:airline_theme='distinguished'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 0
