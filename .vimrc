call pathogen#infect()
syntax on
filetype plugin indent on

set nocompatible

set number
set ruler
syntax on

" Set encoding
set encoding=utf-8

" Whitespace stuff
set nowrap
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set list listchars=tab:\ \ ,trail:·

" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

" NERDTree
" Open always
"autocmd vimenter * NERDTree
" Open if no cmd line files specified
autocmd vimenter * if !argc() | NERDTree | endif
" Close if only window left is NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" Ignore stuff
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$'

" Ack
let g:ackprg="ack-grep -H --nocolor --nogroup --column"

" ConqueShell
command Bash         ConqueTerm       bash
command BashSplit    ConqueTermSplit  bash
command BashVSplit   ConqueTermVSplit bash
command BashTab      ConqueTermTab    bash
command Python       ConqueTerm       ipython
command PythonSplit  ConqueTermSplit  ipython
command PythonVSplit ConqueTermVSplit ipython
command PythonTab    ConqueTermTab    ipython
command Ruby         ConqueTerm       irb
command RubySplit    ConqueTermSplit  irb
command RubyVSplit   ConqueTermVSplit irb
command RubyTab      ConqueTermTab    irb
command Node         ConqueTerm       node
command NodeSplit    ConqueTermSplit  node
command NodeVSplit   ConqueTermVSplit node
command NodeTab      ConqueTermTab    node
command Tig          ConqueTerm       tig
command TigSplit     ConqueTermSplit  tig
command TigVSplit    ConqueTermVSplit tig
command TigTab       ConqueTermTab    tig

"GUndo
nnoremap <F5> :GundoToggle<CR>
let g:gundo_preview_bottom = 1
let g:gundo_preview_height = 10
let g:gundo_width = 30

"Supertab
let g:SuperTabDefaultCompletionType = "context"

"Tabbar
nmap <F8> :TagbarToggle<CR>

" Colors
syntax enable
if has('gui_running')
  set background=light
else
  set background=dark
endif
colorscheme solarized
