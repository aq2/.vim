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


  augroup SetupRipgrep
    autocmd!
    autocmd VimEnter * command! -nargs=* Rg
      \ call fzf#vim#grep(
      \   'rg --column --line-number --no-heading --fixed-strings --ignore-case --no-ignore --hidden --follow --glob "!.git/*" --color "always" '.shellescape(<q-args>), 1,
      \   <bang>0 ? fzf#vim#with_preview('up:60%')
      \           : fzf#vim#with_preview('right:50%:hidden', '?'),
      \   <bang>0)
  augroup end


" https://vim.fandom.com/wiki/Insert_current_date_or_time
" If buffer modified, update any 'Last modified: ' in the first 20 lines.
" 'Last modified: ' can have up to 10 characters before (they are retained).
" Restores cursor and window position using save_cursor variable.
function! LastModified()
  if &modified
    let save_cursor = getpos(".")
    let n = min([20, line("$")])
    keepjumps exe '1,' . n . 's#^\(.\{,10}Last modified: \).*#\1' .
          \ strftime('%a %b %d, %Y  %I:%M%p') . '#e'
    call histdel('search', -1)
    call setpos('.', save_cursor)
  endif
endfun


  function! UpdateLastModified()
    let n = line("$")
    let save_cursor = getpos(".")
    " can have 10 chars before (handy for comment chars)
    keepjumps exe '1,' . n . 's#^\(.\{,10}Last modified: \).*#\1' .
      \ strftime('%a %d %b, %Y  %H:%M') . '#e'
    call histdel('search', -1)
    call setpos('.', save_cursor)
  endfunction

  augroup WriteTimestampOnSave
    autocmd!
    autocmd BufWritePre *.md call UpdateLastModified()
  augroup end


