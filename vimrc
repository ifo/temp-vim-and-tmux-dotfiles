" Pathogen
call pathogen#infect()
call pathogen#helptags()

 "turn syntax highlighting on
syntax on

 "line numbers
set number

 "highlight the current line
set cursorline

 "auto indentation
set autoindent

 "making brackets indent
set smartindent

 "setting tabs and shift widths - convert tabs to spaces
set tabstop=2 softtabstop=2 shiftwidth=2 expandtab smarttab

 "make two semi-colons escape
"inoremap ;; <esc>

 "remove error bells
set noeb vb t_vb=
au GUIEnter * set vb t_vb=

" only do this if autocommands is enabled
if has("autocmd")
  " enable filetype detection
  filetype plugin indent on

  " don't expand tabs
  autocmd Filetype make setlocal ts=4 sts=4 sw=4 noet
endif

