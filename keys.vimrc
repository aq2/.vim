" --- vim keyboard mapping ---

  map <Leader>ee :setlocal statusline=%#Normal#<CR>


"   magic spells
  map <silent> <F5> :setlocal spell! spelllang=en_gb<CR>
  " auto-accept first correction option
  nmap <silent> <Leader>z 1z=

" --- edit/reload dotfiles ---
  nmap <silent> <leader>ez :e ~/.zshrc<CR>
  nmap <silent> <leader>ev :e ~/.vim/vimrc<CR>
  nmap <silent> <leader>sv :so ~/.vim/vimrc<CR>

" --- navigation ---
  " scroll wrapped lines naturally
  nnoremap j gj
  nnoremap k gk

  " leader Tab switches windows and sets pwd
  map <silent> <leader><Tab> <C-W>W:cd %:p:h<CR>:<CR>

  " remap arrow keys to scroll buffers
  nnoremap <silent> <S-Left> :bprev<CR>
  nnoremap <silent> <S-Right> :bnext<CR>

" --- my shortcuts ---
  " lazy man's colon
  nnoremap ; :

  " quick entry/exit into insert mode
  " nnoremap <Space> li
  " nnoremap <Del> i<Del>

  " .... old habits die hard
  nnoremap <silent> <C-s> :w<CR>

  " highlight last inserted text
  nnoremap gV `[v`]

  " w!! let's you sudo save a file
  cmap w!! w !sudo tee % >/dev/null

  cmap <silent> waq wqa<CR>

  nnoremap <silent> <Leader>hl :nohl<CR>
  " map h, to override changes plugin
  nnoremap <silent> <Leader>h :nohl<CR>

  " smarter paste on line above/below, rather than cursor position
  nnoremap ,p :put "<CR>
  nnoremap ,P :put! "<CR>

  " \# does copy/paste/comment in norm and viz modes too 😃
  nmap <silent> <Leader>#  yypgcck
  xmap <silent> <leader># yjpgV<Plug>Commentary<CR>

  nnoremap <silent> <Leader>q :bd<CR>
  map <silent> <leader>cd :cd %:p:h<cr>:pwd<cr>

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


" --- pluginz/leaderz ---

  ab wt :VimwikiTable
  nmap <silent> <Tab> <Plug>VimwikiNextLink

  map <silent> <Leader>g :Goyo<CR>
  map <silent> <Leader>l :Limelight!!<CR>
  map <silent> <Leader>u  :MundoToggle<CR>
  map <silent> <Leader>st :Startify<CR>
  nmap <silent> <Leader>r <Plug>RefreshColorScheme
  map <silent> <Leader>n :NERDTreeFind<CR>
  nmap <silent> <Leader><Space> :NERDTreeFind<CR>
  " map <silent> <Leader>n :NERDTreeToggle<CR> | setlocal statusline=%#Normal#<CR>

" →→ FZF
  " leader f for side/bottom pane
  nnoremap <silent> <Leader>f :FZF<CR>
  nnoremap <silent> <Leader>\ :FZF<CR>
  " leader p to search ~
  nnoremap <silent> <Leader>p :FZF ~<CR>
  nnoremap <silent> <Leader>m :History<CR>

"  trailer trash sweetness
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

