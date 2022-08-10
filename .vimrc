" Install Vundle plugin:
" git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
" Launch vim and run :PluginInstall
" OR: To install from command line: vim +PluginInstall +qall
" Install YouCompleteMe Plugin
" If existing repo, may require:
" git pull --recurse-submodules origin master
" sudo apt install build-essential cmake3 python3-dev
" sudo dnf install cmake gcc-c++ make python3-devel
" cd ~/.vim/bundle/YouCompleteMe
" python3 install.py

set number
set cursorline
set nocompatible              " required
filetype off                  " required
set encoding=utf-8
set noswapfile
set nobackup
set nowritebackup

" Enable Folding
set foldmethod=indent
set foldlevel=99

" Enable Folding with Space bar
nnoremap <space> za

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)

" Enhanced code folding
Plugin 'tmhedberg/Simpylfold'

" Python indentation
Plugin 'vim-scripts/indentpython.vim'

" Add Autocomplete
Bundle 'Valloric/YouCompleteMe'

Plugin 'vim-syntastic/syntastic'

Plugin 'nvie/vim-flake8'

let python_highlight_all=1
syntax on

" File tree
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree


" Saerching: use ^Ctrl+P
Plugin 'kien/ctrlp.vim'

let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaratio


" Git integration
Plugin 'tpope/vim-fugitive'

" Powerline integration
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

" Whitespace Identification
Plugin 'ntpeters/vim-better-whitespace'

" Dracula Color Scheme
Plugin 'dracula/vim', { 'name': 'dracula' }

" ...

" All of your Plugins must be added before the following line
call vundle#end()            " required
let g:dracula_colorterm = 1
colorscheme dracula
filetype plugin indent on    " required

" Python appropriate PEP8 indentation
au BufNewFile,BufRead *.py
    \ set tabstop=4  |
    \ set softtabstop=4  |
    \ set shiftwidth=4   |
    \ set textwidth=79   |
    \ set expandtab      |
    \ set autoindent     |
    \ set fileformat=unix

" You can use an au by filetype/language, ex. YAML.
au! BufNewFile,BufReadPost *.{yaml,yml} set filetype=yaml foldmethod=indent
autocmd FileType yaml setlocal et ts=2 ai sts=2 nu sw=2 expandtab

au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2
    \ set softtabstop=2
    \ set shiftwidth=2

" Flag unecessary whitespace in Python
highlight BadWhitespace ctermfg=16 ctermbg=253 guifg=#000000 guibg=#F8F8F0
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" Aliases system clipboard with unnamed register
set clipboard=unnamedplus

