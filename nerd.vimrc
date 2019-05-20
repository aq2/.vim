" -- -- NERDTree settings

  let NERDTreeMinimalUI = 1
  let NERDTreeQuitOnOpen = 1
  let NERDTreeNaturalSort = 1
  let NERDTreeHijackNetrw = 0
  let NERDTreeMapQuit = '<Esc>'
  let NERDTreeShowBookmarks = 1
  let NERDTreeRespectWildIgnore = 1
  let NERDTreeBookmarksFile = expand("$HOME/.vim/local/NERDTreeBookmarks")
  " let NERDTreeChDirMode=1
  " let NERDTreeStatusLine=-1
  " let g:NERDTreeStatusline="%{matchstr(getline('.'), '\\s\\zs\\w\\(.*\\)')}"


  " remove slashes from NERDTree
  augroup NERDTree
    autocmd!
    autocmd FileType nerdtree setlocal conceallevel=3
      \ | syntax match NERDTreeDirSlash #/$# containedin=NERDTreeDir conceal contained
    " autocmd FileType nerdtree setlocal map <silent> <Leader><Space> :NERDTreeToggle<CR>
    autocmd FileType nerdtree  map <buffer> <silent> <Leader>n :NERDTreeToggle<CR>
 augroup end


" -- File highlighting
  function! NERDTreeHilite(extension,  guifg, guibg)
    exec 'autocmd FileType nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
    exec 'autocmd FileType nerdtree highlight ' . a:extension .' guibg='. a:guibg .' guifg='. a:guifg
  endfunction

  call NERDTreeHilite('md',  '#974286', 'NONE')
  call NERDTreeHilite('css', 'cyan', 'NONE')
  call NERDTreeHilite('vue', 'green', 'NONE')
  call NERDTreeHilite('styl', 'cyan', 'NONE')
  call NERDTreeHilite('html', '#994499', 'NONE')
  call NERDTreeHilite('vimrc',  '#779911', 'NONE')

