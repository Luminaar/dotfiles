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
map <F3> :NERDTreeToggle<CR>

" SPLIT SETTINGS
set splitbelow
set splitright

" Split buffers navigating
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" BUFFERS NAVIGATION
map <C-B> :w <bar> bp<return>
map <C-N> :w <bar> bn<return>

" close buffer but keep the vertical split
map <C-C> :bd<return>:vsp<return>

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

" INDENTATION SETTINGS
filetype plugin indent on

" LINE NUMBERS
set number

" SETTINGS FOR MARKDOWN FILES
autocmd BufNewFile,BufRead,BufNew *.md set filetype=markdown
autocmd FileType markdown set tabstop=4 shiftwidth=4 noexpandtab textwidth=69 formatoptions=t2n autoindent tw=69 fo=tn

" WRITE AND APACHE2 RELOAD
map <F2> :w <CR>
map <F5> :w <bar> !/etc/init.d/apache2 reload<CR>
