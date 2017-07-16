" My VIM configuration file, first created on Saturday, 8th of October 2016, and
" growing ever since...

" This configuration is designed to work well with Terminal font Ubuntu Mono
" Regular size 14

" Higlight results from regular expression search
set hlsearch

" Set the tab width to 4 by default
set tabstop=4

" Convert tabs to spaces
set expandtab

" Display line numbers right from startup by default
set number

" Enable folding of source file at fold points inferred from desired method,
" currently syntax
set foldmethod=syntax 

" Cause the file to be unfolded upon first being opened, but with the option
" of folding it at fold points (as identified by foldmethod) anytime during 
" editing
set foldlevelstart=99

" Always display the filename at the top of the terminal window (or tab)
set title

" Commands to activate the Monokai color scheme for Vim. The Monokai scheme
" configuration is stored in ~/.vim/colors/monokai.vim and was downloaded from
" https://github.com/crusoexia/vim-monokai
syntax on
colorscheme monokai
set t_Co=256

" Turn on automatic indentation
set autoindent

" Allow for me to navigate, click on lines, and position the start bar using 
" mouse cursor
set mouse=a

" Automatically reload the file after Vim detects the file currently
" being opened was changed on disk. This happens particularly when I am pulling
" in changes to my file when I worked on another machine, or after collaborators
" have pushed changes from their machines
set autoread

" Allow all Vim sessions to copy and paste text from the system's clipboard; this
" facilitates copying and pasting text across multiple Vim instances, and even 
" from other non-Vim applications
set clipboard=unnamedplus

" Added the Pathogen plugin manager for Vim, taken 
" from https://github.com/tpope/vim-pathogen
execute pathogen#infect()

" Always generate Helptags upon startup. Once Helptags is called and the helptag
" is generated for recently added plugins, they do not need to be generated again.
" However, just for convenience in case I forget next time, just leave the Helptags
" command here so that Vim will always call helptag generated each time it is run.
Helptags

" Additional command to ensure that vim-clojure-static plugin can run, following
" instructions after installing it via a git clone https://github.com/guns/vim-clojure-static
" into the ~/.vim/bundle directory in adherence to the way Pathogen manages plugins
" Ok so while it works for Clojure, it introduced extraneous indentations into
" my C source files, that whenever I hit return to go to a new line under a nested
" conditional, it would introduce additional indents and become a nuisance. I've
" disabled it for now....
" filetype plugin indent on

