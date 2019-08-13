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

" Display status bar
set laststatus=2

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
augroup ProjectDrawer
  autocmd!
  autocmd VimEnter * :Vexplore
augroup END


" Shortcut Tabs
map <C-t> :tabnew<cr>
imap <C-t> <Esc><C-t>
vmap <C-t> <Esc><C-t>
noremap <tab> :tabnext<cr>
map ,<tab> :tabprevious<cr>
map <S-tab> :tabprevious<cr>
