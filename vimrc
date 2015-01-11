set nocompatible              " be iMproved, required by Vundle
filetype off                  " required by Vundle

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim' " let Vundle manage Vundle, required

" Coding Tools
Plugin 'scrooloose/nerdcommenter'
Plugin 'Shougo/neocomplete'
Plugin 'godlygeek/tabular'
Plugin 'vim-scripts/Align'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'altercation/vim-colors-solarized'

" Coding Infrastructur
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-fugitive'

" File/Navigation
Plugin 'scrooloose/nerdtree' " filebrowser
Plugin 'ctrlpvim/ctrlp.vim' " Fuzzy file, buffer, mru, tag finder.
Plugin 'majutsushi/tagbar'
Plugin 'bling/vim-airline'

" C++
Plugin 'octol/vim-cpp-enhanced-highlight'

" Haskell
Plugin 'bitc/vim-hdevtools'

call vundle#end()            " required by Vundle
filetype plugin indent on    " required by Vundle

" use space as leader
nnoremap <space> <nop>
let mapleader = "\<space>"

" kill Ex-mode
nnoremap Q <nop>

"language tool
let g:languagetool_jar = '$HOME/.vim/LanguageTool/languagetool-commandline.jar'

" buffers
set hidden

" indentation etc.
set backspace=indent,eol,start
set tabstop=2
set expandtab       " Always uses spaces instead of tabs
set shiftwidth=2
set softtabstop=2
set shiftround      " Round indent to nearest shiftwidth multiple
set autoindent

set history=200
set ruler
set laststatus=2 " also display statusbar when only one window is open
set number

" searching
set hlsearch
set incsearch
set ignorecase
set smartcase " use casesensitive searching when using uppercase-chars
set gdefault
" undo search highlighting
nnoremap <leader><leader> :noh<cr>

set wildignorecase " filename ignorecase
" files to ignore when opening files
set wildignore+=*.swp " vim swap-files
set wildignore+=*.o,*.so " c++ object and shared-object
set wildignore+=*.aux,*.pdf,*.log " latex

set autochdir " automatically change window's cwd to file's dir

" mark column 80 and wrap text at column 79
set wrap
set textwidth=79
set colorcolumn=80

scriptencoding utf-8

" enable folder specific vimrc
set exrc
set secure

" Delete trailing white space on save
func! DeleteTrailingWS()
  exe "normal mz"
  %s/\s\+$//e
  exe "normal `z"
endfunc

" Colorsettings
syntax on " Syntax Highlighting
set t_Co=256
set background=dark
colorscheme solarized

augroup vimrc_autocmds
    autocmd!
    " higlight characters past column 80
    autocmd FileType python highlight Excess ctermbg=DarkGrey guibg=Black
    autocmd FileType python match Excess /\%80v.*/
    autocmd FileType python set nowrap
augroup END

" --------------------- Keys ----------------------------
" quick reload vimrc
nnoremap <leader>r :source $MYVIMRC<cr>

" invoke make and open quickfix window in case of errors
nnoremap <leader>m :silent make\|redraw!\|cw<cr>

" sane up-down moving
noremap k gk
noremap j gj

" better backward moving to end of word
noremap <c-e> ge
noremap <c-E> gE

" copy & paste to system clipboard
map <leader>y "+y
map <leader>d "+d
map <leader>p "+p
map <leader>P "+P

" make tab move to matching bracket pairs
map <tab> %

" save file
nnoremap <leader>w :w<cr>
" close window
nnoremap <Leader>q :q<cr>
" new vertical window split and switch
nnoremap <leader>v <c-w>v<c-w>l
" nnoremap <leader>s <c-w>s<c-w>k

" easy window navigation
nnoremap <leader>h <c-w>h
nnoremap <leader>j <c-w>j
nnoremap <leader>k <c-w>k
nnoremap <leader>l <c-w>l

" Use <leader>; to toggle display of whitespace
nnoremap <leader>; :set list!<cr>

" Use <leader>t to go to move between tags
nmap <leader>] <c-]>
nnoremap <leader>tf :tfirst<cr>
nnoremap <leader>tl :tlast<cr>
nnoremap <leader>tn :tnext<cr>
nnoremap <leader>tp :tprevious<cr>

" Line control
nnoremap <c-j> :join<cr>
nnoremap <c-k> o<Esc>k

" Folding
set foldmethod=indent
set foldlevel=99

" Buffer handling
nnoremap K :bn<cr>
nnoremap J :bp<cr>
nnoremap <leader>bf :bf<cr>
nnoremap <leader>bl :bl<cr>
nnoremap <leader>x :bd<cr>

" visual shifting (does not exit Visual mode)
vnoremap < <gv
vnoremap > >gv

" CtrlP
let g:ctrlp_map = '<leader>o'
let g:ctrlp_extensions = ['tag']
nnoremap <leader>bo :CtrlPBuffer<cr>
nnoremap <leader>to :CtrlPTag<cr>

" Fugitive
nnoremap <leader>ge :Gedit<cr>
nnoremap <leader>gd :Gdiff<cr>
nnoremap <leader>gs :Gstatus<cr>
nnoremap <leader>gc :Gcommit<cr>
nnoremap <leader>gb :Gblame<cr>
nnoremap <leader>gl :Glog<cr>
nnoremap <leader>gp :Git push<cr>
nnoremap <leader>gw :Gwrite<cr>

" NERDTree
nnoremap <F2> :NERDTreeToggle<cr>

" Use neocomplete
let g:neocomplete#enable_at_startup = 1
" use smartcase
let g:neocomplete#enable_smart_case = 1
" <TAB>: completion.
inoremap <expr><TAB> pumvisible() ? "\<c-n>" : "\<TAB>"

" Tagbar
nmap <F8> :TagbarToggle<cr>

" Align

" Stop Align plugin from forcing its mapping on us
let g:loaded_AlignMapsPlugin=1
" Align on equal signs
map <leader>a= :Align =<cr>
" Align on comma
map <leader>a, :Align ,<cr>
" Align on pipes
map <leader>a<bar> :Align <bar><cr>
" Prompt for align character
map <leader>ap :Align 

" Enable som tabular presets for Haskell
let g:haskell_tabular = 1

" Syntastic
nnoremap <silent> <leader>e :Errors<cr>
nnoremap <leader>s :SyntasticToggleMode<cr>
let g:syntastic_html_tidy_exec = "/usr/local/bin/tidy"
let g:syntastic_cpp_compiler_options = "-std=c++11"

" hdevtools
au FileType haskell nnoremap <buffer> <leader>tp :HdevtoolsType<cr>
au FileType haskell nnoremap <buffer> <silent> <leader>tc :HdevtoolsClear<cr>
au FileType haskell nnoremap <buffer> <silent> <leader>ti :HdevtoolsInfo<cr>

" pointfree
autocmd BufEnter *.hs set formatprg=pointfree

" airline
let g:airline#extensions#tabline#enabled = 1

" Add the virtualenv's site-packages to vim path
py << EOF
import os.path
import sys
import vim
if 'VIRTUAL_ENV' in os.environ:
    project_base_dir = os.environ['VIRTUAL_ENV']
    sys.path.insert(0, project_base_dir)
    activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
    execfile(activate_this, dict(__file__=activate_this))
EOF

