set encoding=utf-8

" PLUGINS

set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

" Installed plugins
Plugin 'scrooloose/nerdtree.git'
Plugin 'tmhedberg/SimpylFold'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'bling/vim-bufferline'
Plugin 'Valloric/YouCompleteMe'
Plugin 'jlanzarotta/bufexplorer'


call vundle#end()

filetype off
filetype on
" -------

let mapleader=";"

" Remap Esc key
inoremap ;; <Esc>
nnoremap ;; <Esc>
vnoremap ;; <Esc>

" Set color scheme, can be donwloaded here:
" https://github.com/freeo/vim-kalisi
colorscheme mykalisi
set background=dark

" Spell check options
" Eglish
map spe :set spelllang=en_us <bar> set spell<return>
" Czech
map spc :set spelllang=cs <bar> set spell<return>
" Turn off
map spn :set nospell<return>

" Paste options
set pastetoggle=<leader>p

" Autocompletion options
let g:ycm_autoclose_preview_window_after_insertion = 1

" SIMPYLFOLD SETTINGS
let g:SimpylFold_docstring_preview = 1
let g:SimpylFold_fold_docstring = 0

" map Space to toggle folds inside fold and step to the left outside
nnoremap <silent> <Space> @=(foldlevel('.')?'za':"\<Space>")<CR>

" NERDTREE SETTINGS
map <F3> :NERDTreeToggle<CR>
let NERDTreeIgnore=['\.pyc$', '\~$', '__init__\.py$', '__init__\.pyc$']

" SPLIT SETTINGS
set splitbelow
set splitright

" Split resize
nnoremap <silent><Leader>. :vertical resize -5<enter>
nnoremap <silent><Leader>, :vertical resize +5<enter>

" Split buffers navigating
nnoremap <Leader>j <C-W><C-J>
nnoremap <Leader>k <C-W><C-K>
nnoremap <Leader>l <C-W><C-L>
nnoremap <Leader>h <C-W><C-H>

" BUFFERS NAVIGATION
map <Leader>b :w <bar> bp<return>
map <Leader>n :w <bar> bn<return>

" Buffer explorer
nnoremap <Leader>e :ToggleBufExplorer<enter>

syntax on

" TABS SETTINGS
" indentation for other files
set tabstop=4
set shiftwidth=4
set noexpandtab
" indentation for Python
autocmd FileType python set tabstop=4 shiftwidth=4 expandtab
" indentation for HTML
autocmd FileType html set tabstop=2 shiftwidth=2 expandtab
" indentation for JS
autocmd FileType javascript set tabstop=2 shiftwidth=2 expandtab

" INDENTATION SETTINGS
filetype plugin indent on

" LINE NUMBERS
set number

" SETTINGS FOR MARKDOWN FILES
autocmd BufNewFile,BufRead,BufNew *.md set filetype=markdown
autocmd FileType markdown set tabstop=4 shiftwidth=4 noexpandtab textwidth=69 formatoptions=t2n autoindent tw=69 fo=tn

" Wrap at 72 chars for comments.
set formatoptions=cq textwidth=72 foldignore= wildignore+=*.py[co]

"Remove all trailing whitespace on buffer save
:au BufWrite *.* :let _s=@/|:%s/\s\+$//e|:let @/=_s

" VIM TABS
map <PageUp> :tabp <return>
map <PageDown> :tabn <return>

" Execute current file
nnoremap <F9> :w<Enter>:silent !chmod 755 %<CR>:!%:p<Enter>

" Devel mappings
nnoremap <F6> :w<Enter>:! /var/www/scripts/local_dispatch.sh<Enter><Enter>
nnoremap <F10> :w<Enter>:! clear; python3 -m pytest<Enter>
nnoremap <F11> :w<Enter>:! clear; /var/www/scripts/local_dispatch.sh<Enter><Enter>

" Airline
set t_Co=256
let g:airline_theme='murmur'
set laststatus=2
let g:airline_powerline_fonts = 1
let g:bufferline_echo = 0
set noshowmode
let g:airline#extensions#tabline#enabled = 1

let g:airline_left_sep = ''
let g:airline_right_sep = ''
