let g:lightline = {
  \   'tabline': {
  \     'left': [ [ 'tabs', 'bufferline'] ],
  \     'right': [ [ 'close' ] ]
  \   },
  \   'tab': {
  \     'active': [ 'tabnum' ],
  \     'inactive': [ 'tabnum' ]
  \   },
  \  'active': {
  \   'left': [ ['bufferline']],
  \  },
      \ 'component_function': { 'bufferline': 'MyBufferLine' },
  \ }

let g:bufferline_echo = 1

function! MyBufferLine()
  let st=g:bufferline#refresh_status()
  return g:bufferline_status_info.before . g:bufferline_status_info.current . g:bufferline_status_info.after
endfunction

" function! MyBufferline()
"   call bufferline#refresh_status()
"   let buffers = [
"     \   g:bufferline_status_info.before,
"     \   g:bufferline_status_info.current,
"     \   g:bufferline_status_info.after
"     \ ]
"   " remove the annoying whitespaces to make the tabline consistent
"   call map(buffers, 's:strip(v:val)')
"   return buffers
" endfunction

""~~~ bufferline {{{
"set showtabline=2
"let g:bufferline_echo = 0
"let g:bufferline_modified = ' +'
"let g:bufferline_show_bufnr = 0
"let g:bufferline_separator = ' '
"let g:bufferline_active_buffer_left = ''
"let g:bufferline_active_buffer_right = ''
"" please check https://github.com/bling/vim-bufferline/pull/40
"" let g:bufferline_unnamed_buffer = '[No Name]'
"" or with current master branch, https://github.com/bling/vim-bufferline/issues/26
"let g:bufferline_fname_mod = ':t:s?^$?[No Name]?'
""~~~ }}}
