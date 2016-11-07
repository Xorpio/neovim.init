" {{{ Plugin manager
call plug#begin('~/.config/nvim/plugged')
"make vim look good
Plug 'altercation/vim-colors-solarized'
Plug 'vim-airline/vim-airline'
Plug 'tomasr/molokai'

" Nerdtree
Plug 'scrooloose/nerdtree'

" NERDTree Git flags
Plug 'Xuyuanp/nerdtree-git-plugin'

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

" Easytags. tag library helper and required plugin vim-misc
" Plug 'xolox/vim-easytags'
Plug 'xolox/vim-misc'

" Dependend on xolox/vim-misc
Plug 'xolox/vim-notes'

" Tagbar
Plug 'majutsushi/tagbar'

" Better javascript syntax
Plug 'jelera/vim-javascript-syntax'

" better php syntax
Plug 'StanAngeloff/php.vim'

" Markdown syntax
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'

" Project specific vim files
Plug 'joonty/vim-sauce'

" Dark powered neo-completion
function! DoRemote(arg)
      UpdateRemotePlugins
endfunction
Plug 'Shougo/deoplete.nvim', { 'do': function('DoRemote') }

" tmux naviation
Plug 'christoomey/vim-tmux-navigator'

" Comments toggle plugin
Plug 'tomtom/tcomment_vim'

" Plugin for docker files
Plug 'ekalinin/Dockerfile.vim'

"Plugin for vim syntax
Plug 'nelsyeung/twig.vim'

"Plugin to diff 2 folders
Plug 'will133/vim-dirdiff'

"Better php completion
Plug 'shawncplus/phpcomplete.vim'

" Argument wrapping
Plug 'weierophinney/argumentrewrap'

" Snippets
Plug 'honza/vim-snippets'

" Snippets plugin
Plug 'sirver/ultisnips'

" Rest console
Plug 'diepm/vim-rest-console'

" Debugging
" Plug 'joonty/vdebug'

"Interesante kandidates
" glts/vim-cottidie
" tpope/vim-surround --  surround text with html, and more
" Valloric/YouCompleteMe  -- Completion with fuzzy search
" godlygeek/tabular -- simple tab alligntment plugin

call plug#end()
" }}}

let mapleader = ","

set number " Turn on line numbers

" themes
syntax on " making shure syntax colors are shown
set background=dark " nice and dark
colorscheme solarized " nice theme
set t_Co=256

set laststatus=2 " alwasy show statusbar
let g:airline_detect_paste=1 " somthing with paste mode?
let g:airline#extenstions#tabline#enabled=1 " and show in tabs

nnoremap <silent> <leader>n :NERDTreeToggle<CR> " mapping to open nerdtree

let NERDTreeShowLineNumbers=1

" Open nerdtree and find file
nnoremap <f2> :NERDTreeFind<CR>


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

let g:sauce_path = "~/.config/nvim/sauces" " vim sauce storage path

set showcmd " show commands whiel typing

let g:deoplete#enable_at_startup = 1 " Use deoplete

" make lines that are to long red
" hi OverLength ctermbg=red ctermfg=white guibg=#592929
" match OverLength /\%81v.\+/

" Disabled because breaks syntax
" set synmaxcol=100 " this slows down vim extremely

"let g:easytags_async=1 " Easytags on asyn
"let g:easytags_file='~/.vimtags'

"{{{ Commit macro
autocmd FileType gitcommit :execute "normal! /On branch\<cr>yyggpxxk"
"}}}

"{{{ auto use include
" Yank word under cursor
" go to alternate buffer
" Yank namespace
" go back
" go to top
" find use 
" past
" paste class
" sort
"
nnoremap <localleader>ns mBviw"ay<c-^>gg/namespace<cr>Y<c-^>gg/^use\s<cr>pcwuse<c-[>$i\<c-[>"ap{jV}k:sort<cr>`B:noh<cr>
"}}}

" {{{ Syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_scss_checkers=['sass']
" }}}

" {{{ My personal mappings
" Disable arrow keys!
nnoremap <Up> :echo "Use 'k' instead!"<CR>
nnoremap <Down> :echo "Use 'j' instead!"<CR>
nnoremap <Left> :echo "Use 'h' instead!"<CR>
nnoremap <Right> :echo "Use 'l' instead!"<CR>

nnoremap <leader>ve :e $MYVIMRC<CR> " VimrcEdit
nnoremap <leader>vs :source $MYVIMRC<CR> " VimrcSource
" }}}

" {{{ Ultisnippet settings
let g:UltiSnipsSnippetsDir='/home/niek/.config/nvim/plugged/vim-snippets/UltiSnips'
" }}}

" {{{ Vimnotes setings
let g:notes_directories = ['/media/niek/Storage/Dropbox/Dropbox/vimNotes/user']
" }}}

" {{{ Ctrl-p settings
let g:ctrlp_max_files=0
" }}}

"{{{ Deoplete options
"
"}}}

" {{{ Vimscript learning
" chapter 3
noremap <leader>_ ddkP
noremap <leader>- ddp

" chapter 4
inoremap <c-u> <esc>viwUea

" Chapter 5?
"
" Chapter 6
let maplocalleader="\\"

" Chapter 7 = vimrc srouce and load

" Chapter 8
iabbrev mischien "misschien"
iabbrev @@ @author Niek de Gooijer <niek@freshheads.com><c-]>

" Chapter 9
" quotes the current word
nnoremap <leader>' viw<esc>a'<esc>hbi'<esc>lel 

vnoremap <leader>q <esc>`<i'<esc>`>a'<esc>

" Chapter 10
" insertmode exit
inoremap jk <esc>

" Chapter 13 & 14
" Autocommand
augroup filetype_php
    autocmd!
    autocmd FileType php :iabbrev <buffer> rthis return $this
augroup END
" }}}

" {{{ Gundo
let g:gundo_prefer_python3 = 1
" }}}
