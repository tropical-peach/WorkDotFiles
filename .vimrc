set background=dark
let asmsyntax='armasm'
let filetype_inc='armasm'
set tabstop=2
set shiftwidth=4
set number
set ai
syntax on
set smartindent
set backspace=indent,eol,start
:filetype indent on
set hlsearch
:map <F3> :set hlsearch!<CR>
set guioptions-=T "remove toolbar
set mouse=a
set encoding=utf8
set guifont=Monospace\ Bold\ 11
set t_Co=256
set laststatus=2
source ~/.vim/syntax/sv.vim


:map <C-h> :MBEbp<CR>
:map <C-l> :MBEbn<CR>

execute pathogen#infect()

nmap <F8> :TagbarToggle<CR> 
nmap <F9> :NERDTreeToggle<CR> 
" use F3 to toggle highlighting of search strings 

map <C-h> :MBEbp<CR> 
map <C-l> :MBEbn<CR> 

colorscheme peachy

filetype indent on
filetype plugin on
filetype plugin indent on
set rtp+=$HOME/.local/lib/python2.7/site-packages/powerline/bindings/vim/

set statusline=[%n]
set statusline+=\ %1*%f%* 
set statusline+=\ %2*[%M%R%H%W%Y][%{&ff}]%*
set statusline+=\ %= 
set statusline+=\ %9*line:%l/%L\ col:%c%*
set statusline+=\ %8*%p%%%*
set statusline+=\ @CLOCK:%{strftime(\"%H:%M:%S\")}
set statusline+=\ %7*[%b][0x%B]%*
set statusline+=\ %1*%M%*




let g:DoxygenToolkit_briefTag_pre="@Synopsis  "
let g:DoxygenToolkit_paramTag_pre="@Param "
let g:DoxygenToolkit_returnTag="@Returns   "
let g:DoxygenToolkit_blockHeader="--------------------------------------------------------------------------"
let g:DoxygenToolkit_blockFooter="----------------------------------------------------------------------------"
let g:DoxygenToolkit_authorName="1127156 (STS)"

