set nocompatible 			" do not confuse with vi

set t_Co=16				" set 16 colors

syntax enable
filetype detect				" detect filtype within new file without extension
filetype plugin indent on 		" detection = on, plugin = on, indent = on

colorscheme torte2

set autoindent			"not sure if i like this
set background 	=dark			" use light colors on dark background
"set clipboard	=unnamed		" use clipboard register '*'
"set cursorline				" show vertical position of cursor
set display	=lastline		" show as much as possible of last line; prevent @ display
set hidden				" switch buffers without saving
set hlsearch				" highlight search matches
set ignorecase				" ignore case when searching
set incsearch				" highlight part of search match
set laststatus 	=1			" display status bar only when >1 windows open 
set nomousefocus			" do not focus window with mouse cursor
set mousehide				" hide mouse pointer when typing
set number				" show row number
set numberwidth	=1			" minimum width for row number above
set path+=**				" list of directories for find & tab completion
set relativenumber			" show line number relative to cursor
set ruler				" show info at bottom of window
set showmatch				" show matched bracket
"set statusline			" lookup cool lines
"set syntax			" help
set title titlestring=%t		" set window title to filename
set viminfo='100,<50,s10,h,n~/.vim/.viminfo
set wildmenu 				" display all matching files when tab-complete

set ttyfast				" TRY THESE FOR WINDOW SWITCHING ISSUES
set nottyfast

nnoremap B ^
xnoremap B ^
nnoremap E $
xnoremap E $

nnoremap ^ <nop>
xnoremap ^ <nop>
nnoremap $ <nop>
xnoremap $ <nop>

nnoremap <bs> X

let python_highlight_all=1
"highlight LineNr ctermfg=DarkGray
