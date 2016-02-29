" ----------------------------------------
" Keybindings
" ----------------------------------------

" make backspace behave in a sane manner
set backspace=indent,eol,start
let g:mapleader="\<Space>"

" Quick navigation

" Re-select visual block after indenting
" ------------------------------------------------------------
noremap < ^
noremap > $
vnoremap < <gv
vnoremap > >gv

" Re-select visual block after indenting
" ------------------------------------------------------------
noremap <leader>2 :w !sudo tee %<CR>
nnoremap j gj
nnoremap k gk
inoremap jj <Esc>
inoremap qq <Esc>
map qq <Esc> :quit! <CR>
nnoremap qqqq <Esc> :quit! <CR>

" Common typos
" ------------------------------------------------------------
command! Q q!
command! QQ q!
command! QQQ q!
nnoremap Q <nop>
command! W w
command! WW w!
command! WWW w!
command! Ww w!
command! WQ wq!
command! Wq wq!

" Shortcuts
" ------------------------------------------------------------
inoremap jk <Esc>
map <F1> <Esc>
nnoremap WW <Esc> :write! <CR>
map WW <Esc> :write! <CR>
nnoremap QQ <Esc> :quit! <CR>

" Move visual block with J/K
" ------------------------------------------------------------
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" Window management
" ------------------------------------------------------------
nmap <silent> <leader>h :split<CR>
nmap <silent> <leader>v :vsplit<CR>
nmap <silent> <leader>sc :close<CR>
" Equal Size Windows
"nmap <silent> <A-=>w= :wincmd =<CR>
" Swap Windows
nmap <silent> <A->> :wincmd x<CR>

" Resize windows with arrow keys
" ------------------------------------------------------------
noremap <up>    <C-W>+
noremap <down>  <C-W>-
noremap <left>  3<C-W><
noremap <right> 3<C-W>>

" Vim Filer
" ------------------------------------------------------------
nnoremap <C-N> :VimFilerBufferDir<CR>
nnoremap <C-n> :VimFilerExplorer<CR>

" Unite
" ------------------------------------------------------------
nnoremap <C-p> :Unite -buffer-name=files -start-insert file_rec<cr>
" nnoremap <leader>b :Unite buffer<CR>
" nnoremap <leader>B :Unite bookmarks<CR>
nnoremap <leader>p :Unite -vertical -buffer-name=mru -start-insert file_mru<cr>
nnoremap <leader>/ :Unite -no-split grep:.<cr>
nnoremap <leader>y :Unite -no-split -buffer-name=yank    history/yank<cr>
nnoremap <leader>e :Unite -no-split -buffer-name=buffer  buffer<cr>
nnoremap <leader>d <Esc>:bd<cr>
nnoremap <leader>b <Esc>:bp<cr>
nnoremap <leader>n <Esc>:bn<cr>
" nnoremap <C-n> :Unite -vertical file_rec<CR>

" Buffers
" ------------------------------------------------------------
nnoremap <leader>m :bn<cr>
nnoremap <Leader>k :BufOnly<CR>

" Unite
" ------------------------------------------------------------
call unite#custom#profile('default', 'context', {
\   'start_insert': 1,
\   'winheight': 16,
\   'direction': 'dynamictop',
\ })

" See https://github.com/Shougo/unite.vim/issues/236#issuecomment-51983184
call unite#filters#sorter_default#use(['sorter_rank'])
call unite#filters#matcher_default#use(['matcher_fuzzy'])
let g:unite_source_rec_unit = 250
let g:unite_source_rec_max_cache_files = 5000
let g:unite_source_history_yank_enable = 1
let g:unite_source_rec_async_command = ['ag', '--follow', '--nocolor', '--nogroup','--hidden', '-g', '']


" Spelling quickfix
" ------------------------------------------------------------
nmap <silent> <leader>ss :set spell!<CR>
nmap <silent> <leader>sf :QuickSpellingFix<CR>

" Copy/paste
" ------------------------------------------------------------
vmap <c-c> "+yi
vmap <c-x> "+c
vmap <c-v> c<esc>"+p
imap <c-v> <esc>"+pa
imap <c-v> <esc><c-v>a
set pastetoggle=<F6>
map <F6> :set invpaste<CR>:set paste?<CR>
nnoremap Y y$
vmap Y "+y

" Edit vimrc
" ------------------------------------------------------------
map vrc :e ~/.config/nvim/init.vim
map vrp :e ~/.config/nvim/plugins.vim
map vrk :e ~/.config/nvim/keybindings.vim

" ZenRoom
" ---------------------------------------
let g:buftabline_show=0
silent !tmux set status off
set noshowmode
set noshowcmd
set scrolloff=999
noremap <silent> <leader>g :Goyo<cr>

" Recording
" ------------------------------------------------------------
nmap <silent> <leader>R qa
nmap <silent> <leader>r @a
