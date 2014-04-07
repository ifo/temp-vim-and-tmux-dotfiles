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
Bundle 'jistr/vim-nerdtree-tabs'
Bundle 'kchmck/vim-coffee-script'
"Bundle 'pangloss/vim-javascript'
Bundle 'altercation/vim-colors-solarized'
Bundle 'endel/vim-github-colorscheme'
Bundle 'digitaltoad/vim-jade'
Bundle 'lukerandall/haskellmode-vim'
"Bundle 'Valloric/YouCompleteMe'
Bundle 'ervandew/supertab'
Bundle 'tmhedberg/SimpylFold'
Bundle 'gkz/vim-ls'
Bundle 'vim-scripts/trailing-whitespace'
  " vim-scripts
  " non github

  " turn syntax highlighting on
syntax enable

" only do this if autocommands is enabled
if has("autocmd")
  " enable filetype detection
  filetype plugin indent on

  " don't expand tabs
"  autocmd Filetype make setlocal ts=4 sts=4 sw=4 noet
endif

  " line numbers
set number

  " highlight the current line
set cursorline

  " auto indentation
set autoindent

  " making brackets indent
"set smartindent

  " setting tabs and shift widths - convert tabs to spaces
set tabstop=2 softtabstop=2 shiftwidth=2 expandtab smarttab

  " set tabs and shift widths for python, fix paren length
au FileType python setlocal tabstop=4 softtabstop=4 shiftwidth=4 expandtab smarttab
let g:pyindent_open_paren = '&sw'

  " easier fold toggling
nnoremap <space> za

  " make two semi-colons escape
"inoremap ;; <esc>

  " remove error bells
set noeb vb t_vb=
au GUIEnter * set vb t_vb=

  " enable automatic folding
set foldmethod=syntax
set foldlevelstart=30

let javaScript_fold=1
let php_folding=1

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

  " enable clipboard support
set clipboard=unnamed

  " setup NERDTree hotkey
map <F2> :NERDTreeTabsToggle<CR>
  " and have NERDTree open by default
"let g:nerdtree_tabs_open_on_console_startup=1

  " make tabs easier to navigate
map <C-l> :tabn<CR>
map <C-h> :tabp<CR>
map <C-n> :tabnew<CR>

  " set colorscheme (for solarized)
"set background=light
"colorscheme solarized

  " highlight search
set hlsearch

  " clear search highlight with esc

nnoremap <return> :noh<return><return>
