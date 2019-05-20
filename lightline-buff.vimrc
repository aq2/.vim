source ~/.vim/colors/gravyLine.vim

let g:lightline = {
  \ 'colorscheme': 'gravyLine',
  \ 'active': {
  \   'left': [['mode'], ['aqGit'], ['bufferline']],
  \   'right': [['percent', 'lineinfo'], ['filetype']],
  \ },
  \ 'inactive': { 'right': [], },
  \ 'subseparator': { 'left': '', 'right': '' },
  \ 'component_function': {
  \   'aqGit': 'AQGit',
  \   'mode': 'LightlineMode',
  \   'bufferline': 'MyBufferLine',
  \   'percent': 'MyLightLinePercent',
  \   'filetype': 'LightlineFiletype',
  \   'lineinfo': 'MyLightLineLineInfo',
  \ },
\ }

let g:bufferline_echo = 0
let g:bufferline_fname_mod = ':~:.'
 let g:bufferline_modified = ' 😱'
  let g:bufferline_show_bufnr = 0
 let g:bufferline_pathshorten = 1
 
 
 " let g:bufferline_fname_mod = ':t'
 let g:bufferline_inactive_highlight = 'StatusLineNC'
 let g:bufferline_active_highlight = 'StatusLine'

 let g:bufferline_solo_highlight = 1
 let g:bufferline_excludes = [] "see source for defaults


autocmd VimEnter *
    \ let &statusline='%{bufferline#refresh_status()}'
\ .bufferline#get_status_string()




" fancy function!s

  function! LightlineUpdateAQ()
    if g:goyo==0
      call lightline#update()
    endif
  endfunction

  augroup UpdateLightline
    autocmd!
    au BufWritePost,TextChanged,TextChangedI * call LightlineUpdateAQ()
  augroup end

function! LightlineFiletype()
	  return winwidth(0) > 70 ? (&filetype !=# '' ? &filetype : 'no ft') : ''
	endfunction

function! MyLightLinePercent()
  if &ft !=? 'nerdtree'
    return line('.') * 100 / line('$') . '%'
  else
    return ''
  endif
endfunction

function! MyLightLineLineInfo()
  if &ft !=? 'nerdtree'
    return line('.').':'. col('.')
  else
    return ''
  endif
endfunction

	function! LightlineMode()
	  let fname = expand('%:t')
	  return fname == '__Gundo__' ? 'Gundo' :
	        \ fname == '__Gundo_Preview__' ? 'Gundo Preview' :
	        \ fname =~ 'NERD_tree' ? 'NERDTree' :
	        \ winwidth(0) > 60 ? lightline#mode() : ''
	endfunction

 function! AQGit()
    if gitbranch#name() == ''
      return ''
    elseif gitbranch#name() == 'master'
      return ''
    else
      return ''
    endif
  endfunction

function! MyBufferLine()
  if &ft !=? 'nerdtree'
    let st=g:bufferline#refresh_status()
    return g:bufferline_status_info.before . g:bufferline_status_info.current . g:bufferline_status_info.after
  else
    return 'tits'
  endif
endfunction
