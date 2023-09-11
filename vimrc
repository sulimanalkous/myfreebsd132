
" Enable type file detection. Vim will be able to try to detect the type of file in use.  
filetype on  
" Enable plugins and load plugin for the detected file type.  
filetype plugin on
" Load an indent file for the detected file type.  
filetype indent on 


set bg=dark
syntax on
" to enable base16 colors
set termguicolors
set t_Co=256
filetype plugin indent on

colorscheme base16-ocean

set bs=indent,eol,start   
set ruler

set nu
set relativenumber
set encoding=UTF-8
set smarttab
set smartindent
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set re=0
set nowrap
set noswapfile
set incsearch
set scrolloff=8
set guicursor=
set nocompatible
set cursorline
set cursorcolumn
set nobackup
set ignorecase
set smartcase
set showcmd
" Show the mode you are on the last line.
set showmode
" Use highlighting when doing a search.
set hlsearch
" Enable auto completion menu after pressing TAB.
set wildmenu
" Make wildmenu behave list similar to bash completion.
set wildmode=list:longest

" There are certain files that we would never want to edit with Vim.   
" Wildmenu will ignore files with these extensions.   
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx


call plug#begin()   
    Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}   
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }   
    Plug 'junegunn/fzf.vim'   
    Plug 'ryanoasis/vim-devicons'   
    Plug 'scrooloose/nerdcommenter'   
    Plug 'christoomey/vim-tmux-navigator'   
    Plug 'Xuyuanp/nerdtree-git-plugin'   
    Plug 'airblade/vim-gitgutter'   
    Plug 'tiagofumo/vim-nerdtree-syntax-highlight'   
    Plug 'HerringtonDarkholme/yats.vim'   
    Plug 'preservim/nerdtree'   
    Plug 'dense-analysis/ale'   
    Plug 'vim-airline/vim-airline'   
    Plug 'udalov/kotlin-vim' 
    Plug 'chriskempson/base16-vim'
call plug#end()

let mapleader = " " 
nnoremap <C-p> :Files<Cr> 
nnoremap <Leader>f :Rg<Cr>


" Press \p to print the current file to the default printer from a Linux operating system.
" View available printers:   lpstat -v
" Set default printer:       lpoptions -d <printer_name>
" <silent> means do not display output.
"nnoremap <silent> <leader>p :%w !lp<CR>


" Center the cursor vertically when moving to the next word during a search.
nnoremap n nzz
nnoremap N Nzz

" Yank from cursor to the end of line.
nnoremap Y y$

" Map the F5 key to run a Python script inside Vim.
" I map F5 to a chain of commands here.
" :w saves the file.
" <CR> (carriage return) is like pressing the enter key.
" !clear runs the external clear screen command.
" !python3 % executes the current file with Python.
nnoremap <f5> :w <CR>:!clear <CR>:!python3 % <CR>

" You can split the window in Vim by typing :split or :vsplit.
" Navigate the split view easier by pressing CTRL+j, CTRL+k, CTRL+h, or CTRL+l.
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" Resize split windows using arrow keys by pressing:
" CTRL+UP, CTRL+DOWN, CTRL+LEFT, or CTRL+RIGHT.
noremap <c-up> <c-w>+
noremap <c-down> <c-w>-
noremap <c-left> <c-w>>
noremap <c-right> <c-w><

" NERDTree specific mappings.
" Map the F3 key to toggle NERDTree open and close.
nnoremap <F3> :NERDTreeToggle<cr>

" Have nerdtree ignore certain files and directories.
let NERDTreeIgnore=['\.git$', '\.jpg$', '\.mp4$', '\.ogg$', '\.iso$', '\.pdf$', '\.pyc$', '\.odt$', '\.png$', '\.gif$', '\.db$']

" }}}
