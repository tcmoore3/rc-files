" automatic reloading of .vimrc
autocmd! bufwritepost .vimrc source %

au BufNewFile,BufReadPre README set tw=70
au BufNewFile,BufReadPre *.tex set tw=80
au BufNewFile,BufReadPre *.pxi set tw=80
autocmd BufNewFile,BufRead  *.cuh :set filetype=cpp
let mysyntaxfile = "~/.vim/mysyntax.vim"
syntax on
filetype plugin on
filetype indent plugin on
let g:tex_flavor = "latex"

" automatically save and load folds, from
" http://vim.wikia.com/wiki/Make_views_automatic
"autocmd BufWinLeave *.* mkview
"autocmd BufWinEnter *.* silent loadview
"
" change some shit for vimlatex


highlight Normal ctermbg=black ctermfg=gray
set ruler
set expandtab 
set shiftwidth=4
set showcmd
set tabstop=4
set wrapmargin=2
set ignorecase
set guioptions=agirLM"mT 
" disable bells
set vb t_vb= 
"set mouse=a
set autoindent 
set nu
set hlsearch
set cinoptions={1s,f1s  " whitesmith C style indentations (hoomd)
 
" shift tab to reverse indent
imap <S-Tab> <C-d>
" tab to indent the line
imap <Tab> <C-t>
imap ;; <Esc>
" use EE to go to end of file, change to insert mode
map EE G$a<CR>

" " disable arrow keys, first in normal mode...
" noremap <Up> <NOP>
" noremap <Down> <NOP>
" noremap <Left> <NOP>
" noremap <Right> <NOP>
" " ...and also in input mode
" inoremap <Up> <NOP>
" inoremap <Down> <NOP>
" inoremap <Left> <NOP>
" inoremap <Right> <NOP>

set wildmode=longest,list,full
set wildmenu

" quicksave 
noremap <C-Z> :update<CR>
vnoremap <C-Z> <C-C>:update<CR>
inoremap <C-Z> <C-O>:update<CR>

" Rebind <Leader> key
let mapleader=","

" to move around windows
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

" easier moving between tabs
map <Leader>n <esc>:tabprevious<CR>
map <Leader>m <esc>:tabnext<CR>

" easier indenting of blocks
vnoremap < <gv
vnoremap > >gv

set pastetoggle=<F2>
set clipboard=unnamed

autocmd FileType python colorscheme vividchalk
autocmd FileType cpp colorscheme vividchalk
autocmd FileType sh colorscheme vividchalk
autocmd FileType vim colorscheme vividchalk
autocmd FileType python highlight OverLength ctermbg=darkgray ctermfg=white
autocmd FileType python match OverLength /\%81v.\+/
autocmd FileType cpp highlight OverLength ctermbg=darkgray ctermfg=white
autocmd FileType cpp match OverLength /\%121v.\+/
