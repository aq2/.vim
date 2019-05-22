"  general settings

  syntax on
  set signcolumn=no
  colorscheme gravy
  set background=dark
  set ambiwidth=double
  set highlight+=@:Blank
  set laststatus=2 showcmd
  set ttyfast termguicolors
  set splitbelow splitright
  set rnu number numberwidth=4
  set cursorline scrolloff=6 nostartofline

  set nocompatible
  set encoding=utf-8
  set hidden autoread
  set backspace=indent,start,eol
  set clipboard^=unnamed,unnamedplus
  set timeout updatetime=100 ttimeoutlen=20

  set linebreak
  set showbreak=˜
  set breakindent
  set fillchars=""
  set virtualedit=block
  set autoindent copyindent
  filetype plugin indent on
  set wrap whichwrap+=<,>,[,]
  set shiftround shiftwidth=2
  set smarttab tabstop=2 softtabstop=2 expandtab
  set foldmethod=indent foldenable foldlevelstart=1

  set path+=**
  set gdefault
  set showmatch
  set completeopt=longest,menuone
  set sps=best,10 " 10 best spells
  set ignorecase hlsearch incsearch
  set omnifunc=syntaxcomplete#Complete
  set wildmenu wildmode=longest:full,full
  set wildignore+=*/tmp/*,*.swp,*.zip,*.pdf,*/Music/*,*/Pictures/*

  set viminfo+=n~/.vim/local/viminfo

  if exists('$SUDO_USER')
    set nobackup
    set noswapfile
    set noundofile
    set nowritebackup
  else
    set backupdir=~/.vim/local/backup//
    set directory=~/.vim/local/swap// directory+=.
    set undofile undodir=~/.vim/local/undo undodir+=.
  endif

"  gvim settings
  if has('gui_running')
    set go=M
    set linespace=4
    set guifont=Fantasque\ Sans\ Mono\ 14
    set mousehide mousemodel=popup mouse=a
  endif


"  netrw obviously
  let g:netrw_banner = 0
  let g:netrw_winsize = 25
  let g:netrw_liststyle = 3
  let g:netrw_dirhistmax = 0
  let loaded_netrwPlugin = 1     " actually disables it, believe it or not


"  source other vim settings
  source $HOME/.vim/plug.vimrc
  source /home/angelo/.vim/keys.vimrc
  source /home/angelo/.vim/nerd.vimrc
  source /home/angelo/.vim/lightline.vimrc
  source /home/angelo/.vim/functions.vimrc
  source /home/angelo/.vim/plugin-settings.vimrc

  set noshowmode

