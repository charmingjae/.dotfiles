" SYNTAX HIGHLIGHTING
if has("syntax")
	syntax on
endif

" SET BUILT-IN VIM FEATURE
set nu							" Display line number
set tabstop=4					" Set width of tab as 4
set sts=4
set shiftwidth=4
set expandtab
set hlsearch					" Highlighting matched word when search something
set autoindent					" Enable autoindent feature
set smartindent					" Indent related setting
set smarttab					" Indent related setting
set cindent						" Enable indent feature in C lang
set showmatch					" Highlighting pair of brackets
set ruler						" Display current location of line and cursor
set ignorecase					" Ignore upper, lower case when searching
set wmnu						" Display available autocomplete options

set fileencodings=utf8,euc-kr	" Set file encoding

" SET AUTH CREATING BRACKET RELATED FEATURE
inoremap [ []<Left>
inoremap { {}<Left>
