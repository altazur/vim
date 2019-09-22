set nocompatible

set mouse=a
set number
set wildmenu
set wildignore+=.hg,.git,.svn
set wildignore+=*.pyc
set wildignore+=*.jpg,*.bmp,*.gif,*.png,*.jpeg
set path=.,,**
"Additional settings for statusbar(powerbar)
set laststatus=2
set noshowmode
"Additional settings for fzf
set rtp+=~/.fzf

"This is a fix for python identation because .vimrc setting seems won't work
filetype indent on
filetype plugin on

",c to comment the line
map ,c I#<Esc>
",g goto to definition
map ,g :YcmCompleter GoToDefinitionElseDeclaration<CR>
"Run the current python script(can be extended to run different typefile in different ways, not only the *.py
map ,r !python3 %<Enter>
"FZF
map ,f :Files ~/Документы<Enter>

"jedi-vim settings
let g:jedi#show_call_signatures = "0"
let g:ycm_autoclose_preview_window_after_completion=1

set rtp+=~/.vim/bundle/Vundle.vim
"Vundle section
call vundle#begin()

"let Vundle manage Vundle
Plugin 'gmarik/Vundle.vim'
"FuzzyFinder - to open another files quickly
Plugin 'https://github.com/junegunn/fzf.vim'
"Lightline - super status bar
Plugin 'https://github.com/itchyny/lightline.vim'
"YouCompleteMe
Plugin 'https://github.com/ycm-core/YouCompleteMe'

call vundle#end()
"zc to fold\unfold
set foldmethod=indent
set foldlevel=99

"Python identation
au BufNewFile,BufRead *.py
	\set tabstop=4
	\set softtabstop=4
	\set shiftwidth=4
	\set textwidth=79
	\set expandtab
	\set autoindent
	\set fileformat=unix
"Web development identation
au BufnewFile,BufRead *.js, *.html, *.css
	\set tabstop=2
	\set softtabstop=2
	\set shiftwidth=2

set encoding=utf-8
