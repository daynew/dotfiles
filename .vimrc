"vimrc of Dayne Wagner
"pathogen
call pathogen#infect()

"Indents are 4 white space characters
set tabstop=4
set shiftwidth=4
set expandtab

"exit insert mode using jk
inoremap jk <esc>

"bring up the list of buffers 
nnoremap <Space>b :ls<CR>:b 

"run jsl on the current file
nnoremap <Space>j :!jsl -process %:p<CR>

"Syntax highlighting and indentation
filetype plugin indent on
syntax enable 

"solarized
let g:solarized_termtrans = 1
set background=dark
colorscheme solarized

"Show line Numbers
set number

"Start search as you type
set is

"enable highlighted searches
set hlsearch

"create the swaps and backup directories
silent !mkdir ~/.vim > /dev/null 2>&1
silent !mkdir ~/.vim/swaps > /dev/null 2>&1
silent !mkdir ~/.vim/backups > /dev/null 2>&1

"set the swp file location
set dir=~/.vim/swaps

"set the backup file directory
set backupdir=~/.vim/backups

"make backspace work
set backspace=2
