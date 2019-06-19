"... vimwiki
  let g:vimwiki_folding='expr'
  let g:vimwiki_auto_header = 1
  let g:vimwiki_hl_cb_checked = 1
  let g:vimwiki_listsyms = ' 🞄⦁⬮✓'

  let wiki_1 = {}
  let wiki_1.ext = '.md'
  let wiki_1.list_margin = 0
  let wiki_1.path = '~/vimwiki/'
  let wiki_1.syntax = 'markdown'
  let g:vimwiki_list = [wiki_1]

  augroup Wiki
    autocmd!
    autocmd FileType vimwiki map <buffer> - :NERDTreeFind<CR>
  augroup end

  " autocmd BufNewFile *.md :r! echo = %:t:r =
  " autocmd BufNewFile *.md :norm kddo


"... startify
  let g:startify_files_number = 5
  let g:startify_change_to_dir = 1
  let g:startify_enable_special = 0
  let g:startify_session_autoload = 1
  let g:startify_session_dir = '~/.vim/local/session'
  let g:startify_custom_header = map(startify#fortune#boxed(), '"    ".v:val')
  let g:startify_bookmarks = [
    \ {'p': '~/www/pughar/sagharTODO.md'},
    \ {'w': '~/vimwiki/index.md'},
    \ {'z': '~/.zshrc'}
  \ ]


  augroup Startify
    autocmd!
    autocmd User Startified setlocal laststatus=0 cursorline noruler
    autocmd User StartifyBufferOpened set laststatus=2
    autocmd FileType startify map <buffer> - :NERDTreeToggle<CR>
    autocmd FileType startify map <buffer> <Leader>n :NERDTreeToggle<CR>
  augroup end

  let g:startify_lists = [
      \ { 'type': 'sessions',  'header': ['   Sessions']   },
      \ { 'type': 'bookmarks', 'header': ['   Bookmarks']  },
      \ { 'type': 'files',     'header': ['   MRU']        },
  \ ]


"... Goyo and limelight
  let g:goyo=0
  let g:goyo_width=110
  let g:goyo_height=99
  let g:limelight_paragraph_span = 1

  function! s:goyo_enter()
    let g:goyo = 1
    set showtabline=0
    set signcolumn=no
  endfunction

  function! s:goyo_leave()
    let g:goyo = 0
    hi iCursor guifg=red guibg=yellow
  endfunction

  augroup Goyo
    autocmd!
    autocmd! User GoyoLeave nested call <SID>goyo_leave()
    autocmd! User GoyoEnter nested call <SID>goyo_enter()
  augroup end


""... misc

  let g:gitgutter_highlight_lines = 1

  let g:SexyScroller_MaxTime = 100
  let g:SexyScroller_EasingStyle = 2

  let markology_hlline_lower = 1
  let markology_hlline_upper = 1
  let g:markology_ignore_type = "p"

  let g:fzf_layout = { 'left': '~28%' }
  let $FZF_DEFAULT_COMMAND="fd --type f --hidden --follow
    \  --exclude .git --exclude .cache --exclude .mozilla --exclude .local --exclude '*.jpg'"

  augroup Fizzypop
    autocmd!
    " autocmd BufLeave <buffer> set laststatus=2 showmode ruler
    autocmd  FileType fzf set laststatus=0 noshowmode noruler
      \| autocmd BufLeave <buffer> set laststatus=2 showmode ruler
  augroup end


" indent guides
  let g:indent_guides_guide_size=1
  let g:indent_guides_start_level=2
  let g:indent_guides_color_change_percent = 3


" ALE
  let g:lightline#ale#indicator_ok = "OK"
  let g:lightline#ale#indicator_errors = "❗"
  let g:lightline#ale#indicator_checking = "."
  let g:lightline#ale#indicator_warnings = "❗"

  " only lint on save
  " let g:ale_lint_on_enter = 0
  " let g:ale_lint_on_text_changed = 'never'

