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
    return '▾  '.getline(v:foldstart).'     ∘      ('.foldsize.' lines)   '. repeat('   ∘   ', 29)
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

