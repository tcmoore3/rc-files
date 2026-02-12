" ideas for useful commands {{{
""""""""""""""""""""""""""""""""""""""
"""" IDEAS FOR USEFUL COMMANDS """""""
""""""""""""""""""""""""""""""""""""""
" These are descriptions of commands that would be useful but that I haven't
" taken the time to work out the vimscript for
""""""""""""""""""""""""""""""""""""""
"
" add parenthesis (or any other type of bracket) around a visual selection
"
" remove the innermost set of parentheses or other brackets
" }}}

" plugins {{{
call plug#begin()

" filesystem-related plugins (git, fzf, etc...)
Plug 'junegunn/fzf'  " fuzzy finder
Plug 'junegunn/fzf.vim'  " fuzzy finder in vim
Plug 'tpope/vim-fugitive'  " for git in vim
Plug 'preservim/nerdtree'  " file tree explorer
Plug 'Xuyuanp/nerdtree-git-plugin'  " show git stati in nerdtree window
Plug 'preservim/tagbar'  " for navigating codebases by class, function, etc...

" dev/compiler-related
Plug 'dense-analysis/ale'  " realtime linting, fixing, etc...
Plug 'rust-lang/rust.vim'

" for statusline formatting and theme
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" python folding
Plug 'tmhedberg/simpylfold'

" better note-taking in vim
Plug 'xolox/vim-notes'
Plug 'xolox/vim-misc'

" miscellaneous
Plug 'junegunn/seoul256.vim'  " colors
Plug 'tpope/vim-commentary'  " easier commenting
Plug 'vim-latex/vim-latex'
Plug 'morhetz/gruvbox'


call plug#end()
" }}}

" config options and variables {{{
" set mapleader and set C_MapLeader
let mapleader = ","
let C_MapLeader = ","

" be iMproved, required
set nocompatible

" always show line and column in window
set ruler

" expand tab keypresses into the appropriate number of spaces
set expandtab

" set width of indents. almost always 4
" this is the generic setting, override for specific filetypes in after/syntax
set shiftwidth=4

" show commands in the last line of the screen
set showcmd

" let lowercase match lower and uppercase (ignore case) but uppercase only
" matches uppercase (smartcase)
set ignorecase
set smartcase

" stay on current word and do not jump to next instance when searching with "*"
nnoremap * :let @/ = "\\<<C-R><C-W>\\>"<CR>

" highlight matches to previous search pattern
set hlsearch

" show matches to search while typing
set incsearch

" disable bells
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" disable use of mouse. i don't like how the mouse switches the mode.
" setting mouse= still allows me to select text to copy to the system
" clipboard
set mouse=

" match indent of previous line
set autoindent

" show line numbesr
set number

" whitesmith C style indentations (hoomd's preferred style)
set cinoptions={1s,f1s,e1s

" enable syntax highlighting
syntax on

" set indents and plugins by filetype
filetype indent plugin on

" used for vim-latex
let g:tex_flavor = "latex"

" how to handle tab autocompletion
set wildmode=longest,full
set wildmenu
set wildoptions=pum

" toggle paste key
set pastetoggle=<F2>

" save yank delete and change texts normally sent to unnamed register
set clipboard=unnamed

" set which options are saved with mkview
set viewoptions=cursor

" open new vsplit windows on right and split windows below
set splitright
set splitbelow

""" settings related to wrapping
"" these settings make it so that vim will not insert any newlines into a file, and only soft (i.e., visual) wrapping will occur
set textwidth=0
set wrapmargin=0
set wrap
" insert soft wrap between words instead of between letters in the same word
set linebreak

" allow backspacing over start of newly inserted text
set bs=2

" control character displayed before wrapped lines
" use let instead of set to use the string literal
let &showbreak = '> '

" use my bash aliases with :!
let $BASH_ENV = "~/.bash_aliases"

" automatically reload files when they change
set autoread

" set width of NERDTree windown
let g:NERDTreeWinSize=40

" set airline symbols
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_symbols.notexists = ' ?'
let g:airline_symbols.branch = '⎇ '
let g:airline_symbols.dirty = '(*)'
let g:airline_symbols.colnr = ': '
let g:airline_symbols.linenr = ' = '
let g:airline_symbols.maxlinenr = ' '

" do not show fileformat output in airline statusline
let g:airline#parts#ffenc#skip_expected_string='utf-8[unix]'

"""""""""""""""""""""""""""
" machine-specific settings
"""""""""""""""""""""""""""

" laptop
if len(split(globpath('~', '.machine_cheme-paris'))) ||
\  len(split(globpath('~', '.machine_cheme-kaline'))) ||
\  len(split(globpath('~', '.machine_cheme-skubal')))
    " use the correct shell
    set shell=/opt/homebrew/bin/bash

    " set paths to clangd etc
    let g:ale_cpp_clangd_executable = '/usr/bin/clangd'
    let g:ale_c_clangd_executable = '/usr/bin/clangd'
    let g:clang_format_path = '/opt/homebrew/bin/clang-format'
    let g:ale_c_clangformat_executable = '/opt/homebrew/bin/clang-format'
endif

" ncsa-delta
if len(split(globpath('~', '.machine-delta')))
    set shell=/usr/bin/bash
endif

" cheme-hodges
if len(split(globpath('~', '.machine-hodges')))
    set shell=/usr/bin/bash
endif
" }}}

" mappings {{{
" jump out of current block with
" useful for c/c++ files where closing braces are automatically inserted
inoremap <leader><leader>j <esc>]}o
" should also be useful in normal mode (e.g., after deleting a line or
" something)
nnoremap <leader><leader>j ]}o

" shift tab to reverse indent
inoremap <S-Tab> <C-d>
" tab to indent the line
inoremap <Tab> <C-t>
" use EE to go to end of file, change to insert mode
noremap EE G$a<CR>

" disable arrow keys to train fingers to use hjkl, first in normal mode...
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
" ...and in input mode
inoremap <Up> <NOP>
inoremap <Down> <NOP>
inoremap <Left> <NOP>
inoremap <Right> <NOP>

" quicksave
nnoremap <Leader>w :update<cr>
vnoremap <Leader>w :update<cr>
nnoremap <C-S> :update<CR>
inoremap <C-S> <C-O>:update<CR>
" train fingers to only use fast save by mapping normal save keystrokes to nop
nnoremap :w<cr> :echo "File NOT saved. Use <leader>w instead to save."<cr>

" make spacebar do nothing in normal mode
nnoremap <SPACE> <NOP>

" i get annoyed when ; moves the cursor around in normal mode: remove that
" mapping
nnoremap ; <NOP>

" let <leader>; exit insert mode
" i had i liked having it as ;;, but that get's annoying when you want to
" exit insert mode after inserting a ; in a c++ file (which is a lot because
" that's how you end lines in c++ and you would almost never type ,;).
inoremap <leader>; <Esc>
" and visual mode
vnoremap <leader>; <Esc>

" easier moving between tabs
noremap <Leader>n <esc>:tabprevious<CR>
noremap <Leader>m <esc>:tabnext<CR>

" easier indenting of blocks
vnoremap < <gv
vnoremap > >gv

" quickly ruff format current file
nnoremap <Leader>rfmt :update<cr>:!ruff format %<cr>

" help break habit of hitting esc to exit insert mode
inoremap <ESC> <NOP>
" and visual mode
vnoremap <ESC> <NOP>

" toggle search highlighting
nnoremap <leader>hl :set hlsearch!<cr>

" clear search string
nnoremap <leader>cls :let @/ = ""<CR>

" quickly open NERDTree with ctrl-n and Tagbar with ctrl-m
nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap <C-m> :TagbarToggle f<CR>

" stay on current word with * search
nnoremap * :keepjumps normal! mi*`i<CR>

" use ctrl-j and ctrl-k to move to next and previous ALE error/warnings
nnoremap <C-j> :ALENextWrap<CR>
nnoremap <C-k> :ALEPreviousWrap<CR>

" call :Files (fzf file-matching -> edit, split, vsplit)
nnoremap <leader>f<cr> :Files<cr>
" }}}

" autocommands {{{
" automatically source .vimrc when it's saved (useful for changes to take
" place when editing the .vimrc file
autocmd! bufwritepost .vimrc source %

" automatically save and load folds, from
" http://vim.wikia.com/wiki/Make_views_automatic
" this can be annoying if somehow folds got messed up since it shows a red
" error message on the screen
" I added this when i was trying to set folds manually.
" maybe if i get a better folding engine i can get rid of it and let the
" engine handle the folding.
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview

"" treat cuda files like cpp
autocmd BufNewFile,BufRead  *.cuh :set filetype=cpp
autocmd BufNewFile,BufRead  *.cu :set filetype=cpp

" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif
" autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists('s:std_in') |
"     \ execute 'NERDTree' argv()[0] | wincmd p | enew | execute 'cd '.argv()[0] | endif
" command! -nargs=* Startvimfugitive :Git
" autocmd VimEnter * if argc() == 0 && !empty(FugitiveGitDir()) | Git | endif

" highlighting long lines in different filetypes
autocmd BufEnter *.py :match OverLength /\%89v.\+/
autocmd BufEnter *.c,*.h,*.cpp,*.cc,*.hpp,*.cu,*.cuh :match OverLength /\%111v.\+/

" set foldmethod for vimfiles
augroup filetype_vim
  autocmd!
  autocmd FileType vim setlocal foldmethod=marker
augroup END

" set foldmethod for kitty.conf
autocmd FileType conf setlocal foldmethod=marker
" }}}

" colors {{{
" change some of the gruvbox defaults
let g:gruvbox_bold=0
let g:gruvbox_italic=1
let g:gruvbox_contrast_dark='hard'
let g:gruvbox_hls_cursor='blue'
set background=dark

" set colorscheme
colorscheme gruvbox

" highlight overly long lines
highlight OverLength ctermbg=darkgray ctermfg=white


hi Normal ctermfg=249 ctermbg=234
hi Search ctermfg=109
hi Comment ctermfg=242
hi String ctermfg=143
hi pythonBuiltin ctermfg=67
hi pythonDecoratorName ctermfg=101
hi pythonDecorator ctermfg=102
hi pythonEscape ctermfg=65
hi vimNotation ctermfg=65
hi vimMapMod ctermfg=65
hi vimMapModKey ctermfg=65
hi vimBracket ctermfg=65
hi markdownH1 ctermfg=172
hi markdownH2 ctermfg=172
hi markdownH3 ctermfg=172
hi markdownHeadingDelimiter ctermfg=172
hi tomlTableArray ctermfg=31
hi tomlTable ctermfg=31
hi rustCommentLineDoc ctermfg=242
hi MatchParen ctermbg=248 ctermfg=232
hi VertSplit ctermfg=240
hi StatusLineNC ctermfg=240
hi StatusLine ctermbg=254 ctermfg=23
hi Folded ctermbg=236
hi link texRefZone GruvboxBlue
hi link texTypeStyle GruvboxBlue
hi link texInputFile Normal
hi link texLigature Normal
hi link texDelimiter Normal
hi link pythonDocstring Comment
hi def link aleFixerHelp Statement
hi def link aleFixerComment Comment
let g:airline_theme="bubblegum"
" }}}

" from learnvimscriptthehardway {{{

" move current line down 1 in normal mode with -
nnoremap <Leader>- dd p

" move current line up 1 in normal mode with _
nnoremap <Leader>_ ddkP

" capitalize the current word with ctrl-u in insert mode
inoremap <Leader><c-u> <esc>viwUea

" capitalize the current word wtih ctrl-u in normal mode, keeping cursor
" position unchanged
nnoremap <Leader><c-u> mpviwU`p

" source vimrc file
nnoremap <Leader>sv :source $MYVIMRC<cr> :echo "Sourced" $MYVIMRC<cr>

" open vimrc file in split window
nnoremap <Leader>ev :split $MYVIMRC<cr>

" open vimrc file in vsplit window
nnoremap <Leader>vev :vsplit $MYVIMRC<cr>
" }}}

" ale {{{
" Global options
let g:ale_pattern_options_enabled = 0
" allow balloons (N.B.: only works with vim versions with balloon_eval
let g:ale_set_balloons = 1

" language-specific settings
let cpp_opts = '--std=c++20 -Wall -Wextra'
let g:ale_cpp_cc_options = cpp_opts
let g:ale_cpp_gcc_options = cpp_opts
let g:ale_cpp_clang_options = cpp_opts
let g:ale_python_ruff_options = '--force-exclude'
let g:ale_python_ruff_format_options = '--force-exclude'
let g:ale_python_isort_options = ''

" linter options
" Only run linters that I specify
let g:ale_linters_explicit = 1
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_insert_leave = 0
let g:ale_lint_on_enter = 0
let g:ale_lint_on_save = 1
let g:ale_fix_on_save = 1
let g:ale_linters = {
\   'cpp': ['clangd', ],
\   'c': ['clangd',],
\   'cc': ['clangd', ],
\   'h': ['clangd', ],
\   'hpp': ['clangd', ],
\   'rust': ['cargo'],
\   'python': ['ruff'],
\   'tex': ['chktex'],
\   'javascript': ['eslint'],
\}

" fixer options
let g:ale_fixers = {
\   'python': ['ruff_format', 'isort', 'trim_whitespace'],
\   'cpp': ['clang-format', 'trim_whitespace'],
\   'cc': ['clang-format', 'trim_whitespace'],
\   'c': ['clang-format', 'trim_whitespace'],
\   'h': ['clang-format', 'trim_whitespace'],
\   'hpp': ['clang-format', 'trim_whitespace'],
\   'rust': ['rustfmt'],
\   'tex': ['trim_whitespace', 'remove_trailing_lines'],
\   'javascript': ['eslint', 'trim_whitespace'],
\}
let g:ale_c_clangformat_options = ''
" let clang-format find .clang-format to use for sytle
let g:ale_c_clangformat_use_local_file = 1
" }}}

" sandbox {{{
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Settings here are meant to be temporary while I test them out.
" Move them to the appropriate section above if I decide that I like them.
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" itt = Insert Talk Template: useful for editing markdown files to take notes during a talk
nnoremap <leader>itt o<cr>## Presenter, title, group, etc...<cr>- **Main question:** <cr>- **Key takeaway:** <cr>- <esc>kkkwv$h

" find and replace: searches for word under string and puts cursor in position for replacement text
" current line
nnoremap <leader>fr * :s///g<left><left>
" entire buffer
nnoremap <leader>%fr * :%s///g<left><left>

" key mapping for command history + fzf
nnoremap <leader>h: :History:<cr>

" fuzzy completion matching
" first the function used (requires fzf.vim
function! PInsert2(item)
	let @z=a:item
	norm "zp
	call feedkeys('a')
endfunction

function! CompleteInf()
	let nl=[]
	let l=complete_info()
	for k in l['items']
		call add(nl, k['word']. ' : ' .k['info'] . ' '. k['menu'] )
	endfor
	call fzf#vim#complete(fzf#wrap({ 'source': nl,'reducer': { lines -> split(lines[0], '\zs :')[0] },'sink':function('PInsert2')}))
endfunction
" set appropriate completion options
set completeopt=fuzzy,popup,menu


imap <c-'> <CMD>:call CompleteInf()<CR>

" }}}
