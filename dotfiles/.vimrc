set backspace=indent,eol,start "backspace が効かない

set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

Plugin 'Rename'
Plugin 'Lucius'

Plugin 'Yggdroot/indentLine'
Plugin 'airblade/vim-gitgutter'
Plugin 'bling/vim-airline'
Plugin 'kchmck/vim-coffee-script'
Plugin 'kien/ctrlp.vim'
Plugin 'nono/vim-handlebars'
Plugin 'osyo-manga/vim-over'
Plugin 'pangloss/vim-javascript'
Plugin 'rking/ag.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-bundler'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-haml'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-surround'
Plugin 'vim-ruby/vim-ruby'

call vundle#end()
filetype plugin indent on

" keybind
" insert mode
imap <C-j> <esc>

" normal mode
nmap nt :NERDTreeToggle
nmap gt :GitGutterToggle

" display
set number
set cursorline
set notitle
set list
set listchars=tab:»-,trail:~

let loaded_matchparen = 1

set clipboard=unnamedplus

" encoding
set encoding=utf-8

" tab
set expandtab
set autoindent
set tabstop=2
set shiftwidth=2

" statusbar
set laststatus=2

" file
set noswapfile
set nobackup
filetype plugin on

autocmd BufNewFile,BufRead *.php set tabstop=4 shiftwidth=4
autocmd BufNewFile,BufRead *.{md,,markdown} set filetype=markdown

" color
syntax enable
highlight clear SignColumn
set t_Co=256
colorscheme lucius
LuciusWhite

" airline
let g:airline_theme= 'bubblegum'
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_linecolumn_prefix = '␊ '
let g:airline_linecolumn_prefix = '␤ '
let g:airline_linecolumn_prefix = '¶ '
let g:airline#extensions#branch#symbol = '⎇ '
let g:airline#extensions#paste#symbol = 'ρ'
let g:airline#extensions#paste#symbol = 'Þ'
let g:airline#extensions#paste#symbol = '∥'
let g:airline#extensions#whitespace#symbol = 'Ξ'

" indentLine
let g:indentLine_fileTypeExclude = ['help', 'nerdtree']

let g:markdown_fenced_languages = [
\  'coffee',
\  'javascript',
\  'js=javascript',
\  'ruby',
\]

" QuickFix
autocmd QuickFixCmdPost *grep* cwindow
