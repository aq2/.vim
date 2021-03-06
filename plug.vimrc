".....  Plug
  if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
      \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
  endif


  call plug#begin('~/.vim/plugged')
    Plug 'airblade/vim-gitgutter'
    Plug 'bfredl/nvim-miniyank'
    Plug 'csexton/trailertrash.vim'
    Plug 'chrisbra/vim-zsh'
    Plug 'dense-analysis/ale'
    Plug 'digitaltoad/vim-pug'
    " Plug 'ervandew/supertab'
    Plug 'hail2u/vim-css3-syntax'
    Plug 'iloginow/vim-stylus'
    Plug 'itchyny/lightline.vim'
    Plug 'itchyny/vim-gitbranch'
    Plug 'jeetsukumaran/vim-markology'
    Plug 'joeytwiddle/sexy_scroller.vim'
    Plug 'junegunn/fzf', { 'dir': '~/.config/fzf', 'do': './install --all' }
    Plug 'junegunn/fzf.vim'
    Plug 'junegunn/goyo.vim'
    Plug 'junegunn/limelight.vim'
    Plug 'justinmk/vim-dirvish'
    Plug 'maximbaz/lightline-ale'
    Plug 'mgee/lightline-bufferline'
    Plug 'mhinz/vim-startify'
    Plug 'moll/vim-bbye'
    Plug 'nathanaelkane/vim-indent-guides'
    Plug 'othree/html5.vim'
    Plug 'pangloss/vim-javascript'
    Plug 'scrooloose/nerdtree'
    Plug 'simnalamburt/vim-mundo'
    Plug 'StanAngeloff/php.vim'
    " Plug 'storyn26383/vim-vue'
    Plug 'tpope/vim-commentary'
    Plug 'vimwiki/vimwiki'
    Plug 'yurifury/hexHighlight'
  call plug#end()

