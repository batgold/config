set nocompatible 			" do not confuse with vi

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'davidhalter/jedi-vim'

call vundle#end()            " required

" stop autocomplete doc window from opening, from jedi-vim
autocmd FileType python setlocal completeopt-=preview
autocmd VimEnter * set autochdir	" automatically change dir to current

set t_Co=16				" set 16 colors

syntax enable
filetype detect				" detect filtype within new file without extension
filetype plugin indent on 		" detection = on, plugin = on, indent = on

colorscheme torte2

set autoindent				" keep indentation from previous line
set background 	=dark			" use light colors on dark background
set textwidth	=0
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

"FOLDING
set foldmethod	=indent			" folding based on indentation

" Beginning
nnoremap B ^
xnoremap B ^
nnoremap ^ <nop>
xnoremap ^ <nop>

" End
nnoremap E $
xnoremap E $
nnoremap $ <nop>
xnoremap $ <nop>

" Remap ESC
nnoremap <C-@> <Esc>
inoremap <C-@> <Esc>`^
vnoremap <C-@> <Esc>
xnoremap <C-@> <Esc>
cnoremap <C-@> <C-C><Esc>

" End Search Highlighting
nnoremap <CR> :noh<CR><CR>:<backspace>

" map backspace to X when in normal mode, not needed
" nnoremap <bs> X  

" add header to python files
au BufNewFile *.py 0r ~/.vim/ftplugin/pyhead

let python_highlight_all=1
"highlight LineNr ctermfg=DarkGray

" unmap <C-Space> from completion command
let g:jedi#completions_command=""

" stop networks read-write history logging
let g:netrw_dirhistmax=0

" set cursor to I,_,[] for insert,replace,normal mode
let &t_SI = "\<Esc>[6 q"
let &t_SR = "\<Esc>[4 q"
let &t_EI = "\<Esc>[2 q"

set viminfo=%,<800,'10,/50,:100,h,f0,n~/.vim/.viminfo
"           | |    |   |   |    | |  + viminfo file path
"           | |    |   |   |    | + file marks 0-9,A-Z 0=NOT stored
"           | |    |   |   |    + disable 'hlsearch' loading viminfo
"           | |    |   |   + command-line history saved
"           | |    |   + search history saved
"           | |    + files marks saved
"           | + lines saved each register (old name for <, vi6.2)
"           + save/restore buffer list
