  function! MyFoldText()
    let foldsize = (v:foldend-v:foldstart)
    return '▾'.getline(v:foldstart).'   ('.foldsize.' lines)    ▾ '
  endfunction

  set foldtext=MyFoldText()


  augroup RestoreCursorOnOpenFile
    autocmd!
    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
  augroup end


  augroup CursorLineOnlyInActiveWindow
    autocmd!
    autocmd VimEnter,WinEnter,BufWinEnter * setlocal cursorline
    autocmd WinLeave * setlocal nocursorline
  augroup end


  function! UpdateLastModified()
    let n = line("$")
    let save_cursor = getpos(".")
    " can have 10 chars before (handy for comment chars)
    keepjumps exe '1,' . n . 's#^\(.\{,10}Last modified: \).*#\1' .
      \ strftime('%a %b %d, %Y  %H:%M') . '#e'
    call histdel('search', -1)
    call setpos('.', save_cursor)
  endfunction

  augroup WriteTimestampOnSave()
    autocmd!
    autocmd BufWritePre *.md call UpdateLastModified()
  augroup end
