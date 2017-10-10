" not to confuse with vi
set nocompatible

" display all matching files when tab-complete
set wildmenu

"?????
set showmatch

" trying to fix copy/paste, set to read from system clipboard
set clipboard=unnamed

" provides tab-completion for all file related tasks
set path+=**

" create the 'tags' file
command! MakeTags !ctags -R .

syntax enable
filetype plugin on
filetype plugin indent on

nnoremap B ^
nnoremap E $

nnoremap ^ <nop>
nnoremap $ <nop>


" not sure, look these up
let g:netrw_banner=0
let g_nerw_altv=1

"set window title to open file name
let &titlestring = expand("%:t")
if &term == "screen"
	set t_ts=^[k
	set t_fs=^[\
endif
if &term == "screen" || &term == "rxvt-unicode"
	set title
endif

" AUTOCOMMANDS
augroup python
	au!
	set textwidth=79
	set shiftwidth=4
	set tabstop=4
	set expandtab
	set autoindent
augroup end

" augroup vim
" 	au!
" 	set tabstop=4
" augroup end

" autocmd BufEnter *.hdl setlocal commentstring=#\ %s
" autocmd FileType hdl setlocal commentstring=//\ %s
au BufRead,BufNewFile *.hdl syn match asmComment "//"

au BufRead,BufNewFile *.hdl let Comment="//" | let EndComment=""
