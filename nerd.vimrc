" -- -- NERDTree settings
" NERD

  let NERDTreeMinimalUI=1
  let NERDTreeQuitOnOpen=1
  let NERDTreeNaturalSort=1
  let NERDTreeShowBookmarks=1
  let NERDTreeMapQuit='<Esc>' 
  let NERDTreeRespectWildIgnore=1
  let NERDTreeBookmarksFile=expand("$HOME/.vim/local/NERDTreeBookmarks")
  " let NERDTreeChDirMode=1
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
    autocmd FileType tagbar,nerdtree setlocal signcolumn=no
    autocmd User NERDTreeInit call s:attempt_select_last_file()
    " remove slashes from NERDTree
    autocmd FileType nerdtree setlocal conceallevel=3
      \ | syntax match NERDTreeDirSlash #/$# containedin=NERDTreeDir conceal contained
  augroup end

  " autocmd FileType tagbar,nerdtree setlocal statusline=%#Normal#


" -- File highlighting
  function! NERDTreeHilite(extension,  guifg, guibg)
    exec 'autocmd FileType nerdtree highlight ' . a:extension .' guibg='. a:guibg .' guifg='. a:guifg
    exec 'autocmd FileType nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
  endfunction

  call NERDTreeHilite('css', 'cyan', 'NONE')
  call NERDTreeHilite('vue', 'green', 'NONE')
  call NERDTreeHilite('styl', 'cyan', 'NONE')
  call NERDTreeHilite('ini', '#771199', 'NONE')
  call NERDTreeHilite('md',  '#3366aa', 'NONE')
  call NERDTreeHilite('html', '#994499', 'NONE')

