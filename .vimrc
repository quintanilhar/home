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
"set expandtab

"Allow backspacing over everything in insert mode
set backspace=indent,eol,start

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

" Airline settings
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline#extensions#tabline#keymap_ignored_filetypes = ['vimfiler', 'nerdtree']

" Ctrlp settings
let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/](\.svn|\.git|conny|release|solrslave|tools|docs|tmp|data)$',
    \ 'file': '\v\.(txt|png|gif|jpg|psd|bat|jar)$',
    \ }

" Syntastic settings
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" VDebug settings

" Mapping '/remote/path' : '/local/path' 10.128.130.18
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

" Gutentags settings
let g:gutentags_ctags_exclude = ['*.css', '*.html', '*.js', '*.json', '*.lock', '*.md']
let g:gutentags_cache_dir = '~/.vim/gutentags'

" Tagbar settings
let g:tagbar_phpctags_bin='~/.vim/bundle/phpctags/bin/phpctags'

"Mapping
"map <F12> :NERDTreeFromBookmark
map <Leader>nt :NERDTreeToggle<CR>
map <Leader>tt :TagbarToggle<CR>
nmap <C-M> :NERDTreeFind<CR>
map <Leader>f :Ack
map <Leader>ff :Ack "<cword>"<CR>
map <C-L> \c<space>
vmap <C-C> "+y
vmap <C-A> "+Y
map <Leader>r :so $MYVIMRC<CR>
map <Leader>tz :tabnew#<CR>
map <Leader>t :!ctags -R *<CR><CR>
map <silent> <Leader>jd :CtrlPTag<CR><c-\>w
map <Leader>pb :CtrlPBuffer<CR>

"Buffer manipulation
nnoremap <C-B> :buffer<Space>
nnoremap <Leader>bp :bprev<CR>
nnoremap <Leader>bn :bnext<CR>

nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9
nmap <leader>[ <Plug>AirlineSelectPrevTab
nmap <leader>] <Plug>AirlineSelectNextTab

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
