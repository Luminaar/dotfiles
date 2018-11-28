set encoding=utf-8
set hidden

" PLUGINS

set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

" Installed plugins
Plugin 'tmhedberg/SimpylFold'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'Valloric/YouCompleteMe'

call vundle#end()

" Other plugins installed manually
" - auto-pairs
" - commentary
" - indent-text-object

filetype off
filetype on
" -------

let mapleader=" "

set ignorecase
set smartcase

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
let g:ycm_filetype_blacklist = {'robot': 1}

" Simpylfold settings
let g:SimpylFold_docstring_preview = 1
let g:SimpylFold_fold_docstring = 0

" Split settings
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

" Buffer navigation
nnoremap <Leader>e :ls<CR>:b<Space>
map <Leader>a :e#<return>


" File editing settings
set number
set relativenumber
syntax on
set tabstop=4
set shiftwidth=4
set noexpandtab
filetype plugin indent on

" Wrap at 72 chars for comments.
set formatoptions=cq textwidth=72 foldignore= wildignore+=*.py[co]

"Remove all trailing whitespace on buffer save
:au BufWrite *.* :let _s=@/|:%s/\s\+$//e|:let @/=_s

" Specific filetypes
autocmd FileType python set tabstop=4 shiftwidth=4 expandtab
au BufRead *.py %foldo!  " Open all folds when enetring python files for the first time
autocmd FileType html set tabstop=2 shiftwidth=2 expandtab
autocmd FileType javascript set tabstop=2 shiftwidth=2 expandtab
au BufEnter *.css set nocindent
au BufLeave *.css set cindent
autocmd BufNewFile,BufRead,BufNew *.md set filetype=markdown
autocmd FileType markdown set tabstop=4 shiftwidth=4 noexpandtab textwidth=69 formatoptions=t2n autoindent tw=69 fo=tn


" Shortcuts

" Execute current Python file
nnoremap <F9> :w<Enter> :!clear;python %:p<Enter>

" Devel mappings
nnoremap <F5> :w<Enter>:! robot %:p<Enter>
nnoremap <F6> :w<Enter>:! ~/.local_dispatch.sh<Enter><Enter>

" Airline settings
set t_Co=256
let g:airline_theme='murmur'
let g:airline_powerline_fonts = 1
set noshowmode
let g:airline#extensions#tabline#enabled = 0
let g:airline_left_sep = ''
let g:airline_right_sep = ''
