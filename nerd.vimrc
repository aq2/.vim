" -- -- NERDTree settings

  let NERDTreeChDirMode = 0
  let NERDTreeMinimalUI = 1
  let NERDTreeMapUpdir = '-'
  let NERDTreeQuitOnOpen = 1
  let NERDTreeHijackNetrw = 0
  let NERDTreeNaturalSort = 1
  let NERDTreeShowBookmarks = 1
  let NERDTreeToggle = '<Esc>'
  let NERDTreeMapOpenInTab = '\t'
  let NERDTreeRespectWildIgnore = 1
  let NERDTreeBookmarksFile = expand("$HOME/.vim/local/NERDTreeBookmarks")


  augroup NERDTree
    autocmd!
    " remove slashes from NERDTree
    autocmd FileType nerdtree setlocal conceallevel=3
      \ | syntax match NERDTreeDirSlash #/$# containedin=NERDTreeDir conceal contained
    autocmd FileType nerdtree map <buffer> <silent> <Leader>n :NERDTreeToggle<CR>

    " close vim if only buffer is nerd
    autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

    " dont open file in nerd window
    autocmd BufEnter * if bufname('#') =~# "^NERD_tree_" | b# | endif
  augroup end


" -- File highlighting
  function! NERDTreeHilite(extension,  guifg, guibg)
    exec 'autocmd FileType nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
    exec 'autocmd FileType nerdtree highlight ' . a:extension .' guibg='. a:guibg .' guifg='. a:guifg
  endfunction

  call NERDTreeHilite('md',  '#974286', 'NONE')
  call NERDTreeHilite('pug',  '#974286', 'NONE')
  call NERDTreeHilite('css', 'cyan', 'NONE')
  call NERDTreeHilite('vue', 'green', 'NONE')
  call NERDTreeHilite('styl', 'cyan', 'NONE')
  call NERDTreeHilite('html', '#994499', 'NONE')
  call NERDTreeHilite('vimrc',  '#779911', 'NONE')

