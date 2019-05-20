"   change text size
  command! Bigger  let &guifont = substitute(&guifont, '\d\+', '\=submatch(0)+2', '')
  command! Smaller let &guifont = substitute(&guifont, '\d\+', '\=submatch(0)-2', '')

"... zoom/restore window.
  function! s:ZoomToggle() abort
    if exists('t:zoomed') && t:zoomed
      execute t:zoom_winrestcmd
      let t:zoomed = 0
    else
      let t:zoom_winrestcmd = winrestcmd()
      resize
      vertical resize
      let t:zoomed = 1
    endif
  endfunction

  command! ZoomToggle call s:ZoomToggle()
  nnoremap <silent> <C-A> :ZoomToggle<CR>

"... make folds a wee bit more interesting
  function! MyFoldText()
    let foldsize = (v:foldend-v:foldstart)
    return '▾'.getline(v:foldstart).'   ('.foldsize.' lines)  ▾ '
  endfunction

  set foldtext=MyFoldText()


" restore cursor position upon reopening files
  augroup RestoreCursor
    autocmd!
    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
  augroup end

" --- change colorscheme ---
  function! ToggleColours()
    if g:colors_name == 'gravy'
      colo bubblegum-256-light
    else
      colo gravy
    endif
  endfunction

  nnoremap <silent> <leader>cc :call ToggleColours()<CR>

" syntaxy stuff
  map <F10> :echo "hi<"
    \ . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
    \ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
    \ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>

  function! <SID>SynStack()
    if !exists("*synstack")
      return
    endif
    echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
  endfunction

  nmap <leader>sp :call <SID>SynStack()<CR>

" date stamp?
  " update 'Last modified: ' on last line when saved
  " 'Last modified: ' can have up to 10 chars before (handy for comment chars)
  " Restores cursor and window position using save_cursor variable
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

