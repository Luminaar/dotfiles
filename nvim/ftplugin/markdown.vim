autocmd FileType markdown set tabstop=4 shiftwidth=4 noexpandtab textwidth=80 autoindent fo=t2n cocu=nc

let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_no_default_key_mappings = 1

function! s:align()
  let p = '^\s*|\s.*\s|\s*$'
  if exists(':Tabularize') && getline('.') =~# '^\s*|' && (getline(line('.')-1) =~# p || getline(line('.')+1) =~# p)
    let column = strlen(substitute(getline('.')[0:col('.')],'[^|]','','g'))
    let position = strlen(matchstr(getline('.')[0:col('.')],'.*|\s*\zs.*'))
    Tabularize/|/l1
    normal! 0
    call search(repeat('[^|]*|',column).'\s\{-\}'.repeat('.',position),'ce',line('.'))
  endif
endfunction

inoremap <buffer> <silent> <Bar>   <Bar><Esc>:call <SID>align()<CR>a

