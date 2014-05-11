   set nocompatible              " be iMproved
   filetype off                  " required!
   
   set rtp+=~/.vim/bundle/vundle/
   call vundle#rc()
   
   " let Vundle manage Vundle
   " required! 
   Bundle 'gmarik/vundle'
   
   " My bundles here:
   "
   " original repos on GitHub
   Bundle 'tpope/vim-fugitive'
   Bundle 'Lokaltog/vim-easymotion'
   Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
   Bundle 'tpope/vim-rails.git'
   Bundle 'davidhalter/jedi-vim'
   Bundle 'scrooloose/nerdtree'
   Bundle 'ervandew/supertab'
   " vim-scripts repos
   Bundle 'L9'
   Bundle 'FuzzyFinder'
   Bundle 'ctrlp.vim'
   Bundle 'AutoClose'
   " non-GitHub repos
   "Bundle 'git://git.wincent.com/command-t.git'
   " Git repos on your local machine (i.e. when working on your own plugin)
   "Bundle 'file:///Users/gmarik/path/to/plugin'
   " ...
   
   filetype plugin indent on     " required!
   set hidden
   set number
   "====Mappleader Setting===={
   "Set mapleader
   let mapleader = ','
   let g:mapleader =','
   "Fast reloading of the .vimrc
   map <silent> <leader>ss :source ~/.vimrc<cr> 
   "Fast editing of .vimrc
   map <silent> <leader>ee :e ~/.vimrc<cr>  
   "When .vimrc is edited, reload it
   autocmd! bufwritepost .vimrc source ~/.vimrc 
   "}
   "====Searching Setting===={
   set ignorecase "Ignore case when searching
   set smartcase "When searching try ro be smart about cases
   set hlsearch "Highlight search results
   set noincsearch 
   "====Windows Setting===={
   "--Color Settings--
   colorscheme desert "[desert darkblue morning shine evening]
   "set cursorline
   set ttyfast
   set ruler 
   "--Tab Settting--
   set smartindent
   set smarttab
   set expandtab "Using spaces instead of tabs
   set tabstop=4
   set shiftwidth=4
   set softtabstop=4
   "--Status bar Steeing--
   set laststatus=2 "always has status line
   set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\[TYPE=%Y]\ [POS=%04l,%04v]\[%p%%]\[LEN=%L]
   set statusline+=%=\%{fugitive#statusline()}
   "--Command bar Setting--
   set cmdheight=2
   set nobackup
   set noswapfile
   set nowb
   "}
   "
   "====Plugins Setting===={
   "--NerdTree--
   map <F2> :NERDTreeToggle<CR>
   autocmd bufenter * if (winnr("$")==1 && exists("b:NERDTreeType") && b:NERDTreeType=="primary")|q|endif
   let NERDTreeWinSize=22
   let NERDTreeIgnore=['\.pyc','\.swp']
   "--Perl--
   autocmd FileType perl map <F5> :!perl % <cr>
   "--Python--
   autocmd FileType python3 map <F5> :!python % <cr>
   "}
   "
   syntax on
   "
   " Brief help
   " :BundleList          - list configured bundles
   " :BundleInstall(!)    - install (update) bundles
   " :BundleSearch(!) foo - search (or refresh cache first) for foo
   " :BundleClean(!)      - confirm (or auto-approve) removal of unused bundles
   "
   " see :h vundle for more details or wiki for FAQ
   " NOTE: comments after Bundle commands are not allowed.
