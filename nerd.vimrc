" - NREDTree settings
  let NERDTreeMinimalUI=1
  let NERDTreeQuitOnOpen=1
  let NERDTreeShowBookmarks=1
  let NERDTreeNaturalSort=1
  " let NERDTreeChDirMode=1
  let NERDTreeRespectWildIgnore=1
  let NERDTreeBookmarksFile=expand("$HOME/.vim/NERDTreeBookmarks")
  " let NERDTreeStatusLine=-1
  " let g:NERDTreeStatusline="%{matchstr(getline('.'), '\\s\\zs\\w\\(.*\\)')}"

  " . . .  dunno if worx?
  function! s:attempt_select_last_file()
    let l:previous=expand('#:t')
    if l:previous != ''
      call search('\v<' . l:previous . '>')
    endif
  endfunction

  augroup NERDTree
    autocmd!
    autocmd User NERDTreeInit call s:attempt_select_last_file()
  augroup END


  " remove slashes from NERDTree
  augroup nerdtreehidecwd
    autocmd!
    autocmd FileType nerdtree setlocal conceallevel=3
      \ | syntax match NERDTreeDirSlash #/$# containedin=NERDTreeDir conceal contained
  augroup end

  autocmd FileType tagbar,nerdtree setlocal signcolumn=no
  " autocmd FileType tagbar,nerdtree setlocal statusline=%#Normal#


" -- File highlighting
  function! NERDTreeHighlightFile(extension,  guifg, guibg)
    exec 'autocmd FileType nerdtree highlight ' . a:extension .' guibg='. a:guibg .' guifg='. a:guifg
    exec 'autocmd FileType nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
  endfunction

  call NERDTreeHighlightFile('css', 'cyan', 'NONE')
  call NERDTreeHighlightFile('vue', 'green', 'NONE')
  call NERDTreeHighlightFile('styl', 'cyan', 'NONE')
  call NERDTreeHighlightFile('ini', '#771199', 'NONE')
  call NERDTreeHighlightFile('md',  '#3366aa', 'NONE')
  call NERDTreeHighlightFile('html', '#994499', 'NONE')

