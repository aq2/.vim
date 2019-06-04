" --- vim keyboard mapping ---

" --- edit/reload dotfiles ---
  nmap <silent> <leader>ez :e ~/.zshrc<CR>
  nmap <silent> <leader>ev :e ~/.vim/vimrc<CR>
  nmap <silent> <leader>sv :so ~/.vim/vimrc<CR>

" --- navigation ---
  " scroll wrapped lines naturally
  nnoremap j gj
  nnoremap k gk

  " Tab switches windows
  map <silent> <Tab> <C-w><C-w>

  " remap arrow keys to scroll buffers
  nnoremap <silent> <S-Left> :bprev<CR>
  nnoremap <silent> <S-Right> :bnext<CR>

" --- my shortcuts ---
  " lazy man's colon
  nnoremap ; :

  " stick help in virt split
  cabbrev help vert help

  " quick entry/exit into insert mode
  nnoremap <Space> li
  " nnoremap <Del> i<Del>

  " .... old habits die hard
  nnoremap <silent> <C-s> :w<CR>
  nnoremap <silent> <C-S> :wa<CR>

  " highlight last inserted text
  nnoremap gV `[v`]

  " w!! let's you sudo save a file
  cmap w!! w !sudo tee % >/dev/null

  cmap <silent> waq wqa<CR>

  " smarter paste on line above/below, rather than cursor position
  nnoremap ,p :put "<CR>
  nnoremap ,P :put! "<CR>

  " \# does copy/paste/comment in norm and viz modes too 😃
  nmap <silent> <Leader># yypgcck
  xmap <silent> <leader># yjpgV<Plug>Commentary<CR>

  nnoremap :cd :cd %:p:h<cr>:pwd<CR>

  " quick backup file - use saveas! to replace original buffer
  map <silent> <Leader>b :up \| write!
    \ %:p:r-<C-R>=strftime("%d%b-%H:%M")<CR>-bak.<C-R>=expand("%:e")<CR><CR>


" --- bubbles ---
  " Bubble single lines
  nmap <silent> <S-Up> ddkP
  imap <silent> <S-Up> <ESC>ddkPi
  nmap <silent> <S-Down> ddp
  imap <silent> <S-Down> <ESC>ddpi

  " Bubble multiple lines
  vmap <silent> <S-Up> xkP`[V`]
  vmap <silent> <S-Down> xp`[V`]
  imap <silent> <S-Up> <ESC>xkP`[V`]i
  imap <silent> <S-Down> <ESC>xp`[V`]

 " magic spells
  map <silent> <F5> :setlocal spell! spelllang=en_gb<CR>
  " auto-accept first correction option
  nmap <silent> <Leader>z 1z=

" --- pluginz/leaderz ---

  ab wt :VimwikiTable

  nmap <silent> <leader>o :only<CR>
  nmap <silent> <leader>v :vsplit<CR>
  nnoremap <silent> <Leader>q :bd<CR>
  nnoremap <silent> <Leader>h :nohl<CR>
  nmap <silent> <Leader>r <Plug>RefreshColorScheme

  map <silent> - :NERDTreeFind<CR>
  map <silent> <Leader>g :Goyo<CR>
  map <silent> <Leader>st :Startify<CR>
  map <silent> <Leader>l :Limelight!!<CR>
  map <silent> <Leader>u  :MundoToggle<CR>
  map <silent> <Leader>n :NERDTreeFind<CR>

  nnoremap <silent> <Leader>f :FZF<CR>
  nnoremap <silent> <Leader>p :FZF ~<CR>
  nnoremap <silent> <Leader>m :History<CR>

"  trailer trash
  nnoremap <silent> <F12> :Trailer<CR>
  nnoremap <silent> <S-F12> :TrailerTrim<CR>
  vnoremap <silent> <S-F12> :TrailerTrim<CR>


"  archive gubbins
  "  insert date stamp
  nmap <silent> <F3> i<C-R>=strftime("%d %b %-H:%M")<CR><Esc>

  "  add date to end of line
  nmap <silent> <F4> A ✓  <Esc><F3>li<Del><Esc>

  " move underneath archive header
  nmap <silent> <F7> zRdd /## archive<CR>:nohl<CR> p``


" pinched from unimpaired
  function! BlankUp(count) abort
    put!=repeat(nr2char(10), a:count)
    ']+1
    " silent! call repeat#set("\<Plug>unimpairedBlankUp", a:count)
  endfunction

  function! BlankDown(count) abort
    put =repeat(nr2char(10), a:count)
    '[-1
    " silent! call repeat#set("\<Plug>unimpairedBlankDown", a:count)
  endfunction

  nmap [<Space> :call BlankUp(1)<CR>
  nmap ]<Space> :call BlankDown(1)<CR>


"... zoom/restore window.
  function! ZoomToggle() abort
    if exists('t:zoomed') && t:zoomed
      execute t:zoom_winrestcmd
      let t:zoomed = 0
    else
      let t:zoom_winrestcmd = winrestcmd()
      resize
      vertical resize
      let t:zoomed = 1
    endif
  endfunction

  nnoremap <silent> <C-A> :call ZoomToggle()<CR>


" --- change colorscheme ---
  function! ToggleColours()
    if g:colors_name == 'gravy'
      colo bubblegum-256-light
    else
      colo gravy
    endif
  endfunction

  nnoremap <silent> <leader>cc :call ToggleColours()<CR>


" syntaxy stuff
  map <F10> :echo "hi<"
    \ . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
    \ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
    \ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>

  function! <SID>SynStack()
    if !exists("*synstack")
      return
    endif
    echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
  endfunction

  nmap <leader>sp :call <SID>SynStack()<CR>


" change text size  on da fly
  command! Bigger  let &guifont = substitute(&guifont, '\d\+', '\=submatch(0)+2', '')
  command! Smaller let &guifont = substitute(&guifont, '\d\+', '\=submatch(0)-2', '')


"  symbols
  imap :) 😃
  imap :( 😕
  imap =+ ✚  
  imap -_ ➖ 
  imap /? ❓ 
  imap 8* 🞺 
  imap hh ♥
  imap omg 😱
  imap idee  
  imap -> <C-k>->
  imap -. <C-k>->
  imap -= <C-k>->
  imap <- <C-k><-
  imap ,- <C-k><-

