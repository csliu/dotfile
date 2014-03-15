""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" VIM settings from Changshu LIU (changshuliu[at]gmail[dot]com)
" Last updated on: 07-30-2013
"
" some useful links:
" = vim option reference 
"   - http://vimdoc.sourceforge.net/htmldoc/options.html
"   - :h options
" = vimrc example 
"   - http://www.slackorama.com/projects/vim/vimrc.txt
"   - http://amix.dk/vim/vimrc.html
" = vimrc repo 
"   - http://dotfiles.org/.vimrc
"
" NOTE:
" - run "set rtp" to get run time path, where plugins can be stored
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"=> Functions
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" detect current platform
" :h feature_list to get more info
function! GetCurrentPlatform()
  if has("win64") || has("win32") || has("win16") 
    return "windows"
  elseif has("maxunix")
    return "mac"
  else if has("unix")
    let s:uname = substitute(system("uname"), "\n", "", "");
    if s:uname == "Darwin"
      return "mac"
    else
      return "unix"
    endif
  endif
endfunction


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"=> General
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" uses vim settings rather than vi settings
set nocompatible

" turn off error sounds
set noerrorbells
set novisualbell

" verboseness switch to see everything vim is doing
set verbose=0

" mouse settings 
set selectmode=mouse
set mouse=a
set ttyfast
"set ttymouse=xterm2

" set utf8 as standard encoding
set encoding=utf8 

" set End-Of-Line format
set fileformats=unix,mac,dos


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"=> Visual
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" display unprintable char
set listchars=tab:>-
set list

" show wild menu
set wildmenu
set wildignore=*.o,*~,*.pyc

" use dark backgroud
set background=dark
" show line number
set number
" line width
if has('gui_running')
  set columns=100
endif
" show colored column
set colorcolumn=80

" command window height
set cmdheight=2
" command history length
set history=10
" always display status line

set laststatus=2
" show status line in each vim window in given format
set statusline=[%02n]\ %f\ %(\[%M%R%H]%)%=\ %4l,%02c%2V\ %P%*
" always display ruler
set ruler

" gui display font
if has('gui_running')
  "set guifont=Bitstream\ Vera\ Sans\ Mono\ 9
endif

" always have some lines of text when scrolling
set scrolloff=5

" gui config - no menu, no toolbar, no scrollbars
set guioptions-=r
set guioptions-=l
"set guioptions-=m
set guioptions-=T

" stop blinking cursor
set guicursor=a:blinkon0


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"=> Tab & Indention
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" replace tab with space char
set expandtab
" use tab in a smart way
set smarttab
" number of space when input tab
set tabstop=2
" number of space when doing auto indention
set shiftwidth=2  
" copy indent from current line when newing line
set autoindent
" turn on smart indention
set smartindent


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"=> Editing 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" auto load file when it's modified outside
set autoread

" set CWD to current file dir
set autochdir

" no backup files
set nobackup
set nowritebackup
" backup files
"set backupdir=~/tmp 
" swap files$
"set directory=~/tmp 

" paste
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode
"set paste
"set nopaste

" delete to the left in insert mode with backspace
set backspace=indent,eol,start
" chars to wrap lines
set whichwrap+=<,>,h,l
" break at words
set linebreak

" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif

" Remember info about open buffers on close
set viminfo^=%


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"=> Search
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ignore case in search
set ic          
" incremental search
set incsearch   
" highlight search results
set hlsearch    
" ignore case when lowercase
set smartcase   
" default to replace all occurence in a line
set gdefault

" Visual mode pressing * or # searches for the current selection
vnoremap <silent> * :call VisualSelection('f')<CR>
vnoremap <silent> # :call VisualSelection('b')<CR>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"=> Keybinding
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" enable extra key combination
let mapleader=","
let g:mapleader=","

" better window switching
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" keys for managing tabs
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove
" Opens a new tab with the current buffer's path
map <leader>te :tabedit <c-r>=expand("%:p:h")<cr>/

" Move a line of text using ALT+[jk] or Comamnd+[jk] on mac
nmap <M-j> mz:m+<cr>`z
nmap <M-k> mz:m-2<cr>`z
vmap <M-j> :m'>+<cr>`<my`>mzgv`yo`z
vmap <M-k> :m'<-2<cr>`>my`<mzgv`yo`z

if has("mac") || has("macunix")
  nmap <D-j> <M-j>
  nmap <D-k> <M-k>
  vmap <D-j> <M-j>
  vmap <D-k> <M-k>
endif


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"=> Plugins
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
filetype off

"
" vundle
"
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle "gmarik/vundle"

"
" git 
"
Bundle "tpope/vim-fugitive"

"
" colorschemes
" https://github.com/flazz/vim-colorschemes
" https://code.google.com/p/vimcolorschemetest/
"
Bundle "flazz/vim-colorschemes"
if has("gui_running")
  colorscheme putty
endif

"
" plugin - ctags 
" http://www.vim.org/scripts/script.php?script_id=610 
" It needs: http://ctags.sourceforge.net/ 
"
"Bundle "ctags.vim"
"let g:ctags_path=/usr/bin/ctags
"let g:ctags_title=1
"let g:ctags_statusline=1
"let g:ctags_regenerate=0
"let generate_tags=1
"nmap <C-F12>:!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .

"
" plugin - Cscope
" http://cscope.sourceforge.net/
" http://cscope.sourceforge.net/cscope_maps.vim
" usage: cscope -Rbq -f path-to-file.out
"
"Bundle "cscope.vim"

"
" plugin - TagBar
" http://github.com/majutsushi/tagbar
" NOTE: it won't work with GNU ctags
" usage: N/A
"
Bundle "majutsushi/tagbar"
nmap <F8> :TagbarToggle<CR>

"
" plugin - NerdTree
" http://github.com/scrooloose/nerdtree
" usage: NERDTreeToggle
"
Bundle "scrooloose/nerdtree"
"autocmd vimenter * NERDTree
autocmd bufenter * 
  \ if (winnr("$") == 1 
    \ && exists("b:NERDTreeType") 
    \ && b:NERDTreeType == "primary") 
    \ | q | 
  \ endif

"
" plugin - BufExplorer
" http://www.vim.org/scripts/script.php?script_id=42
" usage: \be, \bs, \bv
"
Bundle "bufexplorer.zip"

"
" plugin - WinManager
"
"Bundle "WinManager"
"let g:winManagerWindowLayout='NERDTree|BufferExplorer'
"let g:winManagerWidth = 30
"nmap <C-w><C-b> :BottomExplorerWindow<cr> "
"nmap <C-w><C-b> :BottomExplorerWindow<cr> "

"
" plugin - genutils
"
Bundle "genutils"

"
" plugin - lookupfile
"
Bundle "lookupfile"

"
" plugin - Alternate: a.vim
"
Bundle "csliu/a.vim"
nnoremap <silent> <F12> :A<CR>

"
" plugin - c.vim
"
Bundle "c.vim"
let g:C_BraceOnNewLine="no"
let g:C_AuthorName="Changshu Liu"
let g:C_TypeOfH = "cpp"

"
" plugin - cpp.vim
"
Bundle "cpp.vim"

"
" plugin - C++ omni-completion
"
Bundle "OmniCppComplete"

filetype plugin on


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"=> Java 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Java
let java_highlight_all=1
let java_highlight_debug=1
let java_ignore_javadoc=1
let java_highlight_functions=1
let java_mark_braces_in_parens_as_errors=1
autocmd FileType java : set foldmethod=syntax


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"=> C/Cpp 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"autocmd FileType c,cpp : set foldmethod=syntax

syntax on

