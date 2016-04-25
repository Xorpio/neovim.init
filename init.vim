" {{{ Plugin manager
call plug#begin('~/.config/nvim/plugged')
"make vim look good
Plug 'altercation/vim-colors-solarized'
Plug 'vim-airline/vim-airline'
Plug 'tomasr/molokai'

" Nerdtree
Plug 'scrooloose/nerdtree'

" Fast file search
Plug 'kien/ctrlp.vim'

" whitepase
Plug 'ntpeters/vim-better-whitespace'

" Easy motion
Plug 'easymotion/vim-easymotion'

" emmet plugin
Plug 'mattn/emmet-vim'

" git-gutter for nice git status in file
Plug 'airblade/vim-gitgutter', {'branch': 'nvim'}

" Quick search
Plug 'mileszs/ack.vim'

" Synstax check for many languages
Plug 'scrooloose/syntastic'

" Nice undo plugin
Plug 'vim-scripts/gundo'

" Fugitive git wrapper
Plug 'tpope/vim-fugitive'
call plug#end()
" }}}

" New leader
let mapleader = ","

set number " Turn on line numbers

" themes
syntax on " making shure syntax colors are shown
set background=dark " nice and dark
colorscheme solarized " nice theme

set laststatus=2 " alwasy show statusbar
let g:airline_detect_paste=1 " somthing with paste mode?
let g:airline#extenstions#tabline#enabled=1 " and show in tabs

nmap <silent> <leader>n :NERDTreeToggle<CR> " mapping to open nerdtree

set autoindent " automatic indenting
set copyindent " must find this one out
set ruler " show ruler ? not shure where this shows
set expandtab " expand tabs to spaces
set shiftwidth=4 " expand 4 spaces
set shiftround " must look this one up
set tabstop=4 " also not know
set ignorecase " searching is initial case insensitive
set smartcase " is typing cases it becomse case sensitive

" 2 tabs in css/scss
autocmd Filetype scss setlocal ts=2 sts=2 sw=2

" Enable file type detection and do language-dependent indenting.
filetype plugin indent on

set hidden " enable the posiblility to switch buffer without saving. We have the memory

set scrolloff=3 " make shure there are always 3 lines vissible

set cursorline " nice highlightline on cursor

" make lines that are to long red
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

" {{{ Syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
" }}}

" {{{ My personal mappings
nmap <leader>ve :e ~/.config/nvim/init.vim<CR> " VimrcEdit
nmap <leader>vs :source ~/.config/nvim/init.vim<CR> " VimrcSource
" }}}
