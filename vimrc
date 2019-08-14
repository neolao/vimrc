" Theme
colo pablo

" Encoding
scriptencoding utf-8
set enc=utf-8
set fenc=utf-8

" Display tabs and spaces
highlight Tab ctermbg=darkgray guibg=darkgray
highlight Space ctermbg=darkgray guibg=darkgray
au BufWinEnter * let w:m2=matchadd('Tab', '\t', -1)
au BufWinEnter * let w:m3=matchadd('Space', '\s\+$\| \+\ze\t', -1)
set list listchars=tab:» ,trail:·,nbsp:×

" Display line numbers
set number

" Enable syntax
if has("syntax")
    syntax on
endif

" Indent
set autoindent
set smartindent

" Swap files
set noswapfile

" Display status line
set laststatus=2

" Status line content
" File path, modified flag, type, readonly, encoding, line:column, progression
set statusline=
set statusline+=\ %f\ 
set statusline+=%#CursorColumn#
set statusline+=%m
set statusline+=%y
set statusline+=%r
set statusline+=%=
set statusline+=\ %{&fileencoding?&fileencoding:&encoding}
set statusline+=\ %l/%L:%c
set statusline+=\ %p%%
set statusline+=\ 

" Deactivate wrapping
set nowrap

" Enable mouse
set mouse=a

" Increase display by telling to vim that TTY is fast
set ttyfast

" Netrw settings
let g:netrw_banner = 1
let g:netrw_browse_split = 3
let g:netrw_winsize = 25
let g:netrw_altv = 1
let g:netrw_liststyle = 3

" Shortcut Tabs
map <tab> :tabnext<cr>
map <S-tab> :tabprevious<cr>

" Shortcut Select all
map <C-a> ggVG
imap <C-a> <Esc><C-a>
vmap <C-a> <Esc><C-a>

" Shortcut Duplicate lines
map <silent> <C-k> :.copy .<cr>
imap <C-k> <Esc><C-k>:startinsert<cr>
vmap <silent> <C-i> :copy '><cr>gv
vmap <silent> <C-k> :copy '<-1<cr>gv

" Shortcut Move lines
map <silent> <C-u> :.move .-2<cr>
imap <C-u> <Esc><C-u>:startinsert<cr>
map <silent> <C-j> :.move .+1<cr>
imap <C-j> <Esc><C-j>:startinsert<cr>
vmap <silent> <C-u> :move '<-2<cr>gv
vmap <silent> <C-j> :move '>+1<cr>gv

" Shortcut Delete lines
map <silent> <C-d> :delete<cr>
imap <C-d> <Esc><C-d>:startinsert<cr>

" Shortcut Move cursor
imap <C-w> <Esc><right>wi
imap <C-b> <Esc>bi

" Shortcut Open sidebar
map <C-e> :Vexplore<cr>
imap <C-e> <Esc> :Vexplore<cr>i
vmap <C-e> <Esc> <plug>NERDTreeTabsToggle<cr>
