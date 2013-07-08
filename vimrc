  " Replacing Pathogen with Vundle
  " Pathogen
  " call pathogen from within the bundle folder
"runtime bundle/vim-pathogen/autoload/pathogen.vim
"call pathogen#infect()
"call pathogen#helptags()
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

  " let Vundle manage Vundle
Bundle 'gmarik/vundle'

  " My Bundles:
  "
  " github
Bundle 'scrooloose/nerdtree'
Bundle 'kchmck/vim-coffee-script'
Bundle 'pangloss/vim-javascript'
Bundle 'altercation/vim-colors-solarized'
Bundle 'endel/vim-github-colorscheme'
Bundle 'digitaltoad/vim-jade'
Bundle 'lukerandall/haskellmode-vim'
Bundle 'Valloric/YouCompleteMe'
  " vim-scripts
  " non github

filetype plugin indent on

  " turn syntax highlighting on
syntax enable

  " set background=light
colorscheme github

  " line numbers
set number

  " highlight the current line
set cursorline

  " auto indentation
set autoindent

  " making brackets indent
set smartindent

  " setting tabs and shift widths - convert tabs to spaces
set tabstop=2 softtabstop=2 shiftwidth=2 expandtab smarttab

  " set tabs and shift widths for python, fix paren length
au FileType python set tabstop=4 softtabstop=4 shiftwidth=4 expandtab smarttab
let g:pyindent_open_paren = '&sw'

  " make two semi-colons escape
"inoremap ;; <esc>

  " remove error bells
set noeb vb t_vb=
au GUIEnter * set vb t_vb=

  " enable automatic folding
set foldmethod=syntax
set foldlevelstart=1

let javaScript_fold=1
let php_folding=1

  " only do this if autocommands is enabled
if has("autocmd")
  " enable filetype detection
  filetype plugin indent on

  " don't expand tabs
"  autocmd Filetype make setlocal ts=4 sts=4 sw=4 noet
endif

  " make delete work as expected
set backspace=indent,eol,start 

  " make central swap folder
set directory=~/.vimswaps//

  " make vim backups in central folder
set backup
set backupdir=~/.vimbackups

  " setup browser for haskell_doc.vim
let g:haddock_browser = "open"

  " enable mouse support
set mouse=a
