" --- vim keyboard mapping ---

  map <Leader>ee :setlocal statusline=%#Normal#<CR>


"   magic spells
  map <F5> :setlocal spell! spelllang=en_gb<CR>
  " auto-accept first correction option
  nmap <Leader>z 1z=

" --- edit/reload dotfiles ---
  nmap <leader>ez :e ~/.zshrc<CR>
  nmap <silent> <leader>ev :e ~/.vim/vimrc<CR>
  nmap <silent> <leader>sv :so ~/.vim/vimrc<CR>

" --- navigation ---
  " scroll wrapped lines naturally
  nnoremap j gj
  nnoremap k gk

  " leader Tab switches windows and sets pwd
  map <leader><Tab> <C-W>W:cd %:p:h<CR>:<CR>

  " remap arrow keys to scroll buffers
  nnoremap <S-Left> :bprev<CR>
  nnoremap <S-Right> :bnext<CR>

" --- my shortcuts ---
  " lazy man's colon
  nnoremap ; :

  " quick entry/exit into insert mode
  " nnoremap <Space> li
  " nnoremap <Del> i<Del>

  " .... old habits die hard
  nnoremap <C-s> :w<CR>

  " highlight last inserted text
  nnoremap gV `[v`]

  " w!! let's you sudo save a file
  cmap w!! w !sudo tee % >/dev/null

  cmap waq wqa<CR>

  nnoremap <Leader>hl :nohl<CR>
  " map h, to override changes plugin
  nnoremap <Leader>h :nohl<CR>

  " smarter paste on line above/below, rather than cursor position
  nnoremap ,p :put "<CR>
  nnoremap ,P :put! "<CR>

  " \# does copy/paste/comment in norm and viz modes too 😃
  nmap <Leader>#  yypgcck
  xmap <silent> <leader># yjpgV<Plug>Commentary<CR>

  nnoremap <Leader>q :bd<CR>
  map <leader>cd :cd %:p:h<cr>:pwd<cr>

  " quick backup file
  map <Leader>b :up \| saveas!
    \ %:p:r-<C-R>=strftime("%d%b-%H:%M")<CR>-bak.<C-R>=expand("%:e")<CR>
    \ \| 3sleep \| e #<CR>


" --- bubbles ---
  " Bubble single lines
  nmap <S-Up> ddkP
  imap <S-Up> <ESC>ddkPi
  nmap <S-Down> ddp
  imap <S-Down> <ESC>ddpi

  " Bubble multiple lines
  vmap <S-Up> xkP`[V`]
  vmap <S-Down> xp`[V`]
  imap <S-Up> <ESC>xkP`[V`]i
  imap <S-Down> <ESC>xp`[V`]


" --- pluginz/leaderz ---

  ab wt :VimwikiTable
  nmap <Tab> <Plug>VimwikiNextLink

  map <Leader>g :Goyo<CR>
  map <Leader>l :Limelight!!<CR>
  map <Leader>u  :MundoToggle<CR>
  map <silent> <Leader>st :Startify<CR>
  nmap <Leader>r <Plug>RefreshColorScheme
  map <silent> <Leader>n :NERDTreeFind<CR>
  " map <silent> <Leader>n :NERDTreeToggle<CR> | setlocal statusline=%#Normal#<CR>

" →→ FZF
  " leader f for side/bottom pane
  nnoremap <Leader>f :FZF<CR>
  nnoremap <Leader>\ :FZF<CR>
  " leader p to search ~
  nnoremap <Leader>p :FZF ~<CR>
  nnoremap <Leader>m :History<CR>

"  trailer trash sweetness
  nnoremap <F12> :Trailer<CR>
  nnoremap <S-F12> :TrailerTrim<CR>
  vnoremap <S-F12> :TrailerTrim<CR>


"  archive gubbins
  "  insert date stamp
  nmap <F3> i<C-R>=strftime("%d %b %H:%M")<CR><Esc>

  "  add date to end of line
  nmap <F4> A → <Esc><F3>li<Del><Esc>

  " move underneath archive header
  nmap <F7> zRdd /## archive<CR>:nohl<CR> p``

