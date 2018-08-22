"Pathogen
runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()
filetype plugin indent on

"No compatible with vi
set nocompatible

"Line number
set number

"Ruler
set ruler

"Tab size
set tabstop=4

"Tab size on autoindent
set shiftwidth=4

"Converts tab in spaces
set expandtab

"Syntax
syntax on

"Color schema by Solarized
set background=dark
colorscheme solarized

"Allow mouse
set mouse=a

"Always Show statusline
set laststatus=2

"Enabling 256 colors
set t_Co=256

"Setting right margin
set colorcolumn=80

"No backup files
set nobackup
set nowritebackup
set noswapfile

"Search
set hlsearch
set incsearch
set ignorecase
set smartcase

"Displaying hidden characters
set list
set listchars=tab:>-

" resize splits with mouse.
set ttymouse=xterm2

" Trailing space at end of next line
set wrap
set linebreak
set showbreak=>\ \ \

" Set leader to space bar
let mapleader = "\<Space>"

"Ignoring files and dirs in ctrlp.vim
let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/](\.svn|\.git|conny|release|solrslave|tools|docs|tmp|data)$',
    \ 'file': '\v\.(txt|png|gif|jpg|psd|bat|jar)$',
    \ }

"Syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" VDebug Mapping '/remote/path' : '/local/path' 10.128.130.18
let g:vdebug_options = {
    \ "port": 9008,
    \ "server": "",
    \ "ide_key": 'ricardo_quintanilha',
    \ "break_on_open": 1,
    \ "path_maps": {
    \    '/home/ricardo.quintanilha/awe/partner-postback/master': '/Users/ricardo.quintanilha/projects/awe/partner-postback/master',
    \    '/home/ricardo.quintanilha/awe/site-portal/master': '/Users/ricardo.quintanilha/projects/awe/site-portal/master'
    \    },
    \ "watch_window_style": "compact",
    \ "debug_file": "/tmp/vdebug.log",
    \ "debug_file_level": 2,
    \ "debug_window_level": 0,
    \ }

" Keymap for Vdebug
let g:vdebug_keymap = {
\    "run" : "<Leader>/",
\    "run_to_cursor" : "<Down>",
\    "step_over" : "<Up>",
\    "step_into" : "<Left>",
\    "step_out" : "<Right>",
\    "close" : "q",
\    "detach" : "<F7>",
\    "set_breakpoint" : "<Leader>s",
\    "eval_visual" : "<Leader>e",
\    "eval_under_cursor" : "<Leader>c"
\}

"Mapping
"map <F12> :NERDTreeFromBookmark
map <C-E> :NERDTreeToggle <CR>
nmap <C-M> :NERDTreeFind<CR>
map <Leader>f :Ack
map <Leader>ff :Ack "<cword>"<CR>
map <C-L> \c<space>
vmap <C-C> "+y
vmap <C-A> "+Y
map <Leader>r :so $MYVIMRC<CR>
map <Leader>tz :tabnew#<CR>
map <Leader>t :!ctags -R *<CR><CR>

"Prevent vim to cut instead of deleting something
nnoremap x "_x
nnoremap d "_d
nnoremap D "_D
vnoremap d "_d

"Move the cut (normal delete) to the leader prefix
nnoremap <Leader>d ""d
nnoremap <Leader>D ""D
vnoremap <Leader>d ""d

"Disabling Arrow Keys
nnoremap <LEFT> <nop>
nnoremap <DOWN> <nop>
nnoremap <UP> <nop>
nnoremap <RIGHT> <nop>

autocmd BufWritePre * %s/\s\+$//e
