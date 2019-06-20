"  custom lightline settings

  source ~/.vim/colors/gravyLine.vim

  let g:lightline = {
    \  'colorscheme': 'gravyLine',
    \  'active': {
    \    'left': [['mode'], ['buffers']] ,
    \    'right': [['percent'], ['lineinfo'], ['gitBranch'], [ 'linter_checking', 'linter_errors', 'linter_warnings', 'linter_ok' ]]
    \  },
    \  'inactive': {
    \    'right': [],
    \  },
    \  'subseparator': { 'left': '', 'right': '' },
    \  'component_function': {
    \    'mode': 'MyMode',
    \    'gitBranch': 'MyGit',
    \    'percent': 'MyPercent',
    \    'lineinfo': 'MyLineInfo',
    \   }
    \ }


  let g:lightline.component_expand = {
      \  'buffers': 'lightline#bufferline#buffers',
      \  'linter_checking': 'lightline#ale#checking',
      \  'linter_warnings': 'lightline#ale#warnings',
      \  'linter_errors': 'lightline#ale#errors',
      \  'linter_ok': 'lightline#ale#ok',
      \ }

  let g:lightline.component_type = {
      \     'buffers': 'tabsel',
      \     'linter_checking': 'left',
      \     'linter_warnings': 'warning',
      \     'linter_errors': 'error',
      \     'linter_ok': 'left',
      \ }

  let g:lightline#bufferline#modified  = ' 😱'
  let g:lightline#bufferline#read_only  = ' 🕱 '
  let g:lightline#bufferline#filename_modifier = ':~:.'
  let g:lightline.tabline          = {'left': [['buffers']], 'right': [['close']]}

	function! MyMode()
	  if winwidth(0) < 46
	    setlocal statusline=\
	    return
	  endif
	   return lightline#mode()
	endfunction

  function! MyGit()
    return winwidth(0) > 70 ? gitbranch#name() : ''
  endfunction!

  function! MyPercent()
    return  winwidth(0) > 70 ? line('.') * 100 / line('$') . '%' : ''
  endfunction

  function! MyLineInfo()
    return  winwidth(0) > 70 ? line('.').':'. col('.') : ''
  endfunction

  function! MyLightlineUpdate()
    if g:goyo==0
      set laststatus=2
      call lightline#update()
    endif
  endfunction

  augroup UpdateLightline
    autocmd!
    au BufWritePost,TextChanged,TextChangedI,CursorHold * call MyLightlineUpdate()
  augroup end


" buffer mappings
  nmap <Leader>1 <Plug>lightline#bufferline#go(1)
  nmap <Leader>2 <Plug>lightline#bufferline#go(2)
  nmap <Leader>3 <Plug>lightline#bufferline#go(3)
  nmap <Leader>4 <Plug>lightline#bufferline#go(4)
  nmap <Leader>5 <Plug>lightline#bufferline#go(5)
  nmap <Leader>6 <Plug>lightline#bufferline#go(6)

