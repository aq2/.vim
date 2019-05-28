" Vim colour scheme: travy
" Author: angelo

"   init
  hi clear
  " for kitty
  " let &t_ut=''
  set t_Co=256
  syntax reset
  set background=dark
  let g:colors_name = "travy"

" set colour variables

  " black
  let s:black="#2d241e"


  " red


  " green
  " ls executables

  " orange/yellow


  " blue
  let s:blue="#7f749d"
  " ls directories

  " purp/magenta
  let s:purple="#2b2b2b"


  " turq/cyan
  " ls symlinks

  " grey/white
  let s:white="#b59784"


  " lblack/dgrey
  let s:gray="#968477"

  let s:dgray='#5a493c'


  " lred
  let s:lred="#f83070"


  " lgreen


  " lorange/yel
  let s:orange="#c8764a"


  " lblue


  " lpurp/mag


  " lturq/cy


  " lwhite
  let s:lwhite="#c5aa9a"


  " bg
  let s:dark="#312721"


  " fg
  " ls normal



  let s:dgrape='#570246'
  let s:grape='#772266'
  let s:eggplant='#974286'
  " let s:plum="#974286"
  let s:plum="#b76690"
  let s:brown= "#b09676"

  " happens to be cursor line!
  " let s:ldark="#373632"

  let s:greenish='#2d2d1e'
  " let s:greenish='#1d2d10'
  let s:grayish='#392e27'



"   cursors
  set guicursor=i:ver20-iCursor
  hi iCursor guibg=yellow ctermbg=yellow
  hi CursorLine guibg=#373632 guifg=NONE cterm=none
  autocmd InsertEnter * hi CursorLine guibg=#405000 cterm=none
  autocmd InsertLeave * hi CursorLine guibg=#373632 cterm=none

" basic text
  exe 'hi Type guifg='s:plum
  exe 'hi Tag guifg='s:blue
  exe 'hi PreProc guifg='s:plum
  exe 'hi Special guifg='s:gray
  exe 'hi Noise guifg='s:eggplant
  exe 'hi Constant guifg='s:brown
  exe 'hi Underlined gui=underline'
  exe 'hi Operator guifg='s:eggplant
  exe 'hi Comment guifg='s:gray' gui=italic'
  exe 'hi Statement guifg='s:blue' gui=bold'
  exe 'hi Normal guifg='s:white' guibg='s:black
  exe 'hi Blank guifg='s:purple' guibg='s:purple
  exe 'hi NonText guifg='s:black' guibg='s:black

"  erm, not sure really
  exe 'hi Search guibg='s:orange
  exe 'hi Visual guifg='s:dark' guibg='s:orange
  exe 'hi IncSearch guifg='s:white' guibg='s:dark

"   highlights
  exe 'hi Function guifg='s:lwhite
  exe 'hi Title guifg='s:lwhite' gui=bold'
  exe 'hi Identifier guifg='s:lwhite' gui=italic'
  exe 'hi Todo guifg='s:dark' guibg='s:brown' gui=bold'

"   line numbers and ui stuff
  exe 'hi Folded guifg='s:plum' guibg='s:black
  exe 'hi LineNr guifg='s:dgray' guibg='s:black
  exe 'hi VertSplit guifg='s:black' guibg='s:black
  exe 'hi CursorLineNr guifg='s:gray' guibg='s:dark
  exe 'hi FoldColumn guifg='s:plum' guibg='s:black
  exe 'hi SignColumn guifg='s:plum' guibg='s:black

  exe 'hi PmenuSel guibg='s:dgray
  exe 'hi PmenuThumb guibg='s:dgray
  exe 'hi PmenuSbar guibg='s:black
  exe 'hi Pmenu guifg='s:white' guibg='s:grayish

  exe 'hi WildMenu guifg='s:white' guibg='s:dgray' gui=bold'
  exe 'hi StatusLine guifg='s:orange' guibg='s:purple' gui=italic'
  exe 'hi StatusLineNC guifg='s:plum' guibg='s:purple' gui=none'

  exe 'hi Directory guifg='s:blue
  exe 'hi MatchParen guifg='s:black' guibg='s:dgray


" messages
  exe 'hi MoreMsg guifg='s:orange
  exe 'hi WarningMsg guifg='s:orange' guibg='s:black
  exe 'hi Error guifg='s:black' guibg='s:lred' gui=bold'
  exe 'hi ErrorMsg guifg='s:black' guibg='s:lred' gui=bold'
  exe 'hi Question guifg='s:orange' guibg='s:dark' gui=bold'

"  diffy daff
  exe 'hi DiffAdd guibg='s:greenish
  exe 'hi DiffChange guibg='s:grayish
  exe 'hi DiffText guifg='s:lred' guibg='s:blue' gui=bold'
  exe 'hi DiffDelete guifg='s:plum' guibg='s:black' gui=none'

"  vimwiki is changed
  exe 'hi VimwikiLink guifg='s:blue' gui=bold'
  exe 'hi VimwikiHeader1 guifg='s:lwhite' gui=bold'
  exe 'hi VimwikiHeader2 guifg='s:orange' gui=bold'
  exe 'hi VimwikiHeader3 guifg='s:brown' gui=bold'
  exe 'hi VimwikiHeader4 guifg='s:plum' gui=bold'
  exe 'hi VimwikiHeader5 guifg='s:lred' gui=bold'
  exe 'hi VimwikiHeader6 guifg='s:eggplant' gui=bold'

"  markology
  exe 'hi MarkologyHLl guifg='s:gray' guibg='s:black
  exe 'hi MarkologyHLu guifg='s:gray' guibg='s:black
  exe 'hi MarkologyHLo guifg='s:dgray' guibg='s:black
  exe 'hi MarkologyHLLine guifg='s:white' guibg='s:dgrape

" language specific
  " Python Highlighting
  exe 'hi pythonBuiltin guifg='s:blue
  " exe 'hi pythonBuiltinFunc guifg='s:blue

  " Javascript Highlighting 
  exe 'hi jsBuiltins guifg='s:blue
  exe 'hi jsFunction guifg='s:blue' gui=bold'
  exe 'hi jsGlobalObjects guifg='s:plum
  exe 'hi jsAssignmentExps guifg='s:blue

  " Html Highlighting
  hi! link htmlTagName Statement
  hi! link htmlTag Operator
  hi! link htmlEndTag Operator
  " hi! link htmlEndTag Statement
  exe 'hi htmlLink guifg='s:white' gui=underline'
  exe 'hi htmlSpecialTagName guifg='s:blue

  " Markdown Highlighting
  exe 'hi mkdCode guifg='s:blue

" nerd
  exe  'hi NERDTreeDir guifg='s:blue

" TrailerTrash
  exe 'hi UnwantedTrailerTrash guibg='s:grape

"→→→ fzf ftw
  let g:fzf_colors = {
    \ 'fg':      ['fg', 'Normal'],
    \ 'bg':      ['bg', 'PMenu'],
    \ 'hl':      ['fg', 'Comment'],
    \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
    \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
    \ 'hl+':     ['fg', 'Statement'],
    \ 'info':    ['fg', 'PreProc'],
    \ 'border':  ['fg', 'Ignore'],
    \ 'prompt':  ['fg', 'Conditional'],
    \ 'pointer': ['fg', 'Exception'],
    \ 'marker':  ['fg', 'Keyword'],
    \ 'spinner': ['fg', 'Label'],
    \ 'header':  ['fg', 'Comment']
  \ }
