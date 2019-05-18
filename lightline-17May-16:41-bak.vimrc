  source ~/.vim/colors/gravyLine.vim

  let g:lightline = {
      \ 'colorscheme': 'gravyLine',
      \ 'component_function': {
      \   'gitAQ': 'GitAQ'
      \ },
      \ 'active': {
      \   'left': [['mode'], ['gitAQ'], ['buffers']] ,
      \   'right': [['percent', 'lineinfo']]
      \ },
      \ 'subseparator': { 'left': '', 'right': '' },
      \ 'inactive': {},
  \ }

  " can we change left?
  " rtfm and do the tutorial!
  " when space gets short, abbreviate MODE and remove percentage/line info
  " put git at end? show proper branch name, symbol when space is short?

  let g:lightline#bufferline#modified  = ' 😱'
  let g:lightline#bufferline#read_only  = ' '
  let g:lightline#bufferline#filename_modifier = ':~:.'
  let g:lightline.component_type   = {'buffers': 'tabsel'}
  let g:lightline.component_expand = {'buffers': 'lightline#bufferline#buffers'}
  let g:lightline.tabline          = {'left': [['buffers']], 'right': [['close']]}

  " change so only takes place when not enough room?
  let g:lightline.mode_map = {
		    \ 'n' : 'NORM',
		    \ 'i' : 'INS ',
		    \ 'R' : 'REPL',
		    \ 'v' : 'VIS ',
		    \ 'V' : 'VLIN',
		    \ "\<C-v>": 'VBLK',
		    \ 'c' : 'COMM',
		    \ 's' : 'SEL ',
		    \ 'S' : 'SLIN',
		    \ "\<C-s>": 'SBLK',
		    \ 't': 'TERM',
  \ }


" fancy function!s
  function! GitAQ()
    if gitbranch#name() == ''
      return ''
    elseif gitbranch#name() == 'master'
      return ''
    else
      return ''
    endif
  endfunction


  function! LightlineUpdateAQ()
    if g:goyo==0
      call lightline#update()
    endif
  endfunction

  augroup UpdateLightline
    autocmd!
    au BufWritePost,TextChanged,TextChangedI * call LightlineUpdateAQ()
  augroup end

" buffer mappings - do i need so many??
  nmap <Leader>1 <Plug>lightline#bufferline#go(1)
  nmap <Leader>2 <Plug>lightline#bufferline#go(2)
  nmap <Leader>3 <Plug>lightline#bufferline#go(3)
  nmap <Leader>4 <Plug>lightline#bufferline#go(4)
  nmap <Leader>5 <Plug>lightline#bufferline#go(5)
  nmap <Leader>6 <Plug>lightline#bufferline#go(6)

