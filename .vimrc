" """""""""""""""""""""""""""""""""""
" Kristof's vimrc, since march 2017 "
" """""""""""""""""""""""""""""""""""

" TABLE OF CONTENTS
" """""""""""""""""
" Base configurations ............... bconf
" Plugins ........................... plugs
" Styling configuration ............. sconf
" Edition configurations ............ econf
" Completion configurations ......... cconf


" BASE CONFIGURATIONS (bconf) "
" """""""""""""""""""""""""""""

" Enabling filetype support provides filetype-specific indenting, syntax
" highlighting, omni-completion and other useful settings.
filetype plugin indent on
syntax on

" 'matchit.vim' is built-in so let's enable it!
" Hit '%' on 'if' to jump to 'else'.
runtime macros/matchit.vim

set nocompatible               " Enter the current millenium
set ruler                      " Shows the current line number at the bottom right of the screen.
set wildmenu                   " Great command-line completion, use '<Tab>' to move around and '<CR>' to validate.
set wildignorecase			   " Ignore case on completion


" PLUGINS (bconf) "
" """""""""""""""""
" Plugins are managed via 'Plug' package manager: https://github.com/junegunn/vim-plug

" Begin 'Plug'
call plug#begin('~/.vim/plugged')

" Plugin listing: less is more
Plug 'leafgarland/typescript-vim'
Plug 'ajmwagar/vim-dues'

" End 'Plug'
call plug#end()


" STYLING CONFIGURATION (sconf) "
" """""""""""""""""""""""""""""""
colorscheme dues


" EDITION CONFIGURATIONS (econf) "
" """"""""""""""""""""""""""""""""

set autoindent                 " Minimal automatic indenting for any filetype.
set backspace=indent,eol,start " Proper backspace behavior.
set shiftwidth=4               " Shift spaces
set tabstop=4                  " Tab spaces
set number					   " Display page number, non relative
set scrolloff=3 			   " Keep 3 lines below and above the cursor


" COMPLETION CONFIGURATIONS (cconf) "
" """""""""""""""""""""""""""""""""""
set wildignore+=*.bmp,*.gif,*.ico,*.jpg,*.png,*.ico
set wildignore=*.swp,*.bak
set wildignore+=*.pyc,*.class,*.sln,*.Master,*.csproj,*.csproj.user,*.cache,*.dll,*.pdb,*.min.*
set wildignore+=*/.git/**/*,*/.hg/**/*,*/.svn/**/*
set wildignore+=*.pdf,*.psd
set wildignore+=node_modules/*,bower_components/*
