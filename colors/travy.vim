" Vim colour scheme: travy
" Author: angelo

"   init
  hi clear
  set t_Co=256
  syntax reset
  set background=dark
  let g:colors_name = "travy"

" set colour variables

  " black
  let s:black="#2d241e"

  " red
  " prompt error

  " green
  let s:green='#2d2d1e'
  " ls executables

  " orange/yellow
  let s:dgray='#5a493c'

  " blue
  let s:blue="#7f749d"
  " ls directories

  " purp/magenta
  let s:purple="#2b2b2b"

  " turq/cyan
  let s:cyan='#392e27'
  " ls symlinks

  " grey/white
  let s:white="#b59784"

  " lblack/dgrey
  let s:lblack='#373632'

  " lred
  let s:lred="#f83070"

  " lgreen
  let s:brown= "#80a666"
  " let s:brown= "#b09676"

  " lorange/yel
  let s:orange="#c8764a"

  " lblue
  " ??

  " lpurp/mag
  let s:lpurple="#974286"

  " lturq/cy
  let s:lcyan="#968477"

  " lwhite
  let s:lwhite="#c5aa9a"


  " bg
  let s:dark="#312721"

  " fg
  " ls normal


  " markology and trailer trash colours...
  let s:dgrape='#570246'
  let s:grape='#772266'       


  " noise and operators - quiet
  let s:eggplant='#974286'


  " let s:green='#1d2d10'



"   cursors - change this bocker
  set guicursor=i:ver20-iCursor
  hi iCursor guibg=yellow ctermbg=yellow
  exe 'hi CursorLine guibg='s:lblack' cterm=none'

  augroup CursorLineColours
    autocmd!
    autocmd InsertEnter * hi CursorLine guibg=#405000 cterm=none
    autocmd InsertLeave * exe 'hi CursorLine guibg='s:lblack' cterm=none'
  augroup end

" basic text
  exe 'hi Type guifg='s:lpurple
  exe 'hi Tag guifg='s:blue
  exe 'hi PreProc guifg='s:lpurple
  exe 'hi Special guifg='s:lcyan
  exe 'hi Noise guifg='s:eggplant
  exe 'hi Constant guifg='s:brown
  exe 'hi Underlined gui=underline'
  exe 'hi Operator guifg='s:eggplant
  exe 'hi Comment guifg='s:lcyan' gui=italic cterm=italic'
  exe 'hi Statement guifg='s:blue' gui=bold cterm=bold'
  exe 'hi Normal guifg='s:white' guibg='s:dark
  exe 'hi Blank guifg='s:purple' guibg='s:purple
  exe 'hi NonText guifg='s:black' guibg='s:dark

"  erm, not sure really
  exe 'hi Search guibg='s:orange
  exe 'hi Visual guifg='s:dark' guibg='s:orange
  exe 'hi IncSearch guifg='s:white' guibg='s:dark

"   highlights
  exe 'hi Function guifg='s:orange
  exe 'hi Title guifg='s:lwhite' gui=bold cterm=bold'
  exe 'hi Identifier guifg='s:lwhite' gui=italic cterm=italic'
  exe 'hi Todo guifg='s:orange' guibg='s:dark' gui=bold cterm=bold'

"   line numbers and ui stuff
  exe 'hi Folded guifg='s:lpurple' guibg='s:black
  exe 'hi LineNr guifg='s:dgray' guibg='s:black
  exe 'hi VertSplit guifg='s:black' guibg='s:black
  exe 'hi CursorLineNr guifg='s:lcyan' guibg='s:dark
  exe 'hi FoldColumn guifg='s:lpurple' guibg='s:black
  exe 'hi SignColumn guifg='s:lpurple' guibg='s:black

  exe 'hi PmenuSel guibg='s:dgray
  exe 'hi PmenuThumb guibg='s:dgray
  exe 'hi PmenuSbar guibg='s:black
  exe 'hi Pmenu guifg='s:white' guibg='s:cyan

  exe 'hi WildMenu guifg='s:white' guibg='s:dgray' gui=bold cterm=bold'
  exe 'hi StatusLine guifg='s:orange' guibg='s:purple' gui=italic cterm=italic'
  exe 'hi StatusLineNC guifg='s:lpurple' guibg='s:purple' gui=none cterm=none'

  exe 'hi Directory guifg='s:blue
  exe 'hi MatchParen guifg='s:black' guibg='s:dgray


" messages
  exe 'hi MoreMsg guifg='s:orange
  exe 'hi WarningMsg guifg='s:orange' guibg='s:black
  exe 'hi Error guifg='s:dgray' guibg='s:lred' gui=bold cterm=bold'
  exe 'hi ErrorMsg guifg='s:black' guibg='s:lred' gui=bold cterm=bold'
  exe 'hi Question guifg='s:orange' guibg='s:dark' gui=bold cterm=bold'
  highlight link ALEErrorLine error


"  diffy daff
  exe 'hi DiffAdd guibg='s:green
  exe 'hi DiffChange guibg='s:cyan
  exe 'hi DiffText guifg='s:lred' guibg='s:blue' gui=bold cterm=bold'
  exe 'hi DiffDelete guifg='s:lpurple' guibg='s:black' gui=none cterm=none'

"  vimwiki is changed
  exe 'hi VimwikiLink guifg='s:blue' gui=bold cterm=bold'
  exe 'hi VimwikiHeader1 guifg='s:orange' gui=bold cterm=bold'
  exe 'hi VimwikiHeader2 guifg='s:lpurple' gui=bold cterm=bold'
  exe 'hi VimwikiHeader4 guifg='s:brown' gui=bold cterm=bold'
  exe 'hi VimwikiHeader4 guifg='s:lred' gui=bold cterm=bold'
  exe 'hi VimwikiHeader5 guifg='s:lwhite' gui=bold cterm=bold'
  exe 'hi VimwikiHeader6 guifg='s:eggplant' gui=bold cterm=bold'

"  markology
  exe 'hi MarkologyHLl guifg='s:lcyan' guibg='s:black
  exe 'hi MarkologyHLu guifg='s:lcyan' guibg='s:black
  exe 'hi MarkologyHLo guifg='s:dgray' guibg='s:black
  exe 'hi MarkologyHLLine guifg='s:white' guibg='s:dgrape

" language specific
  " Python Highlighting
  exe 'hi pythonBuiltin guifg='s:blue
  " exe 'hi pythonBuiltinFunc guifg='s:blue

  " Javascript Highlighting
  exe 'hi jsBuiltins guifg='s:blue
  exe 'hi jsFunction guifg='s:blue' gui=bold cterm=bold'
  exe 'hi jsGlobalObjects guifg='s:lpurple
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
