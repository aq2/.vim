"   change text size 'on da fly'
  command! Bigger  let &guifont = substitute(&guifont, '\d\+', '\=submatch(0)+2', '')
  command! Smaller let &guifont = substitute(&guifont, '\d\+', '\=submatch(0)-2', '')


"... make folds a wee bit more interesting
  function! MyFoldText()
    let foldsize = (v:foldend-v:foldstart)
    return '▾'.getline(v:foldstart).'   ('.foldsize.' lines)    ▾ '
  endfunction

  set foldtext=MyFoldText()


" restore cursor position upon reopening files
  augroup RestoreCursor
    autocmd!
    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
  augroup end


" update 'Last modified: ' date stamp on last line when saved
  " can have 10 chars before (handy for comment chars)
  function! LastModified()
    let n = line("$")
    let save_cursor = getpos(".")
    keepjumps exe '1,' . n . 's#^\(.\{,10}Last modified: \).*#\1' .
      \ strftime('%a %b %d, %Y  %H:%M') . '#e'
    call histdel('search', -1)
    call setpos('.', save_cursor)
  endfunction

  augroup WriteTimestamp()
    autocmd!
    autocmd BufWritePre *.md call LastModified()
  augroup end

