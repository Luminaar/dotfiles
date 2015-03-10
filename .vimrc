" PLUGINS

set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

" Installed plugins
Plugin 'scrooloose/nerdtree.git'
Plugin 'tmhedberg/SimpylFold'

call vundle#end()

filetype off
filetype on
" -------

" SIMPYLFOLD SETTINGS
let g:SimpylFold_docstring_preview = 1
let g:SimpylFold_fold_docstring = 0

" map Space to toggle folds inside fold and step to the left outside
nnoremap <silent> <Space> @=(foldlevel('.')?'za':"\<Space>")<CR>

" NERDTREE SETTINGS
map <F2> :NERDTreeToggle<CR>

" SPLIT SETTINGS
set splitbelow
set splitright

" Split buffers navigating
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" BUFFERS NAVIGATION
map <C-B> :bp<return>
map <C-N> :bn<return>

" close buffer but keep the vertical split
map <C-C> :bd<return>:vsp<return>

syntax on

" TABS SETTINGS
" indentation for Python
autocmd FileType python set tabstop=4 shiftwidth=4 expandtab
" indentation for HTML
autocmd FileType html set tabstop=2 shiftwidth=2 expandtab

" INDENTATION SETTINGS
filetype plugin indent on

" LINE NUMBERS
set number
