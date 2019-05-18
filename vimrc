" → init plug plugin
   source $HOME/.vim/plug.vimrc

"  general settings
  syntax on
  set signcolumn=no
  colorscheme gravy
  set background=dark
  set ambiwidth=double
  set virtualedit=block
  set ttyfast termguicolors
  set splitbelow splitright
  set rnu number numberwidth=4
  set laststatus=2 showcmd noshowmode
  set cursorline scrolloff=9 nostartofline

  set backspace=2
  set nocompatible
  set encoding=utf-8
  set hidden autoread
  set clipboard^=unnamed,unnamedplus
  set timeout updatetime=100 ttimeoutlen=20

  set linebreak
  set showbreak=˜
  set fillchars=""
  set autoindent copyindent
  filetype plugin indent on
  set wrap whichwrap+=<,>,[,]
  set shiftround shiftwidth=2
  set tabstop=2 softtabstop=2 expandtab
  set foldmethod=indent foldenable foldlevelstart=1

  set path+=**
  set gdefault
  set showmatch
  set completeopt=longest,menuone
  set ignorecase hlsearch incsearch
  set omnifunc=syntaxcomplete#Complete
  set wildmenu wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pdf,*/Music/*,*/Pictures/*

  set nobackup
  set viminfo+=n~/.vim/local/viminfo
  " set backup backupdir=~/.vim/local/backup//
  set directory=~/.vim/local/swap// directory+=.
  set undofile undodir=~/.vim/local/undo undodir+=.

  " only show 10 best spell alternatives
  set sps=best,10


"  gvim settings
  if has('gui_running')
    set go=M
    set linespace=4
    " set lines=39 columns=125
    set mousehide mousemodel=popup mouse=a
    set guifont=Fantasque\ Sans\ Mono\ 16
  endif


"  netrw obviously
  let g:netrw_banner = 0
  let g:netrw_winsize = 25
  let g:netrw_liststyle = 3
  let g:netrw_dirhistmax = 0


"  source other vim settings
  source /home/angelo/.vim/keys.vimrc
  source /home/angelo/.vim/nerd.vimrc
  source /home/angelo/.vim/lightline.vimrc
  source /home/angelo/.vim/functions.vimrc
  source /home/angelo/.vim/plugin-settings.vimrc

