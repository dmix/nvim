" ---------------------------------------------------------

call plug#begin('~/.config/nvim/plugged')

" ???
" -----------------------------------------

" Plug 'bogado/file-line'
" Plug 'facebook/vim-flow'
" Plug 'sickill/vim-pasta' " context-aware pasting
" Plug 'Shougo/vimproc.vim', { 'do': 'make' }
" Plug 'junegunn/vim-easy-align' " ---> auto align blocks of text
" Plug 'maksimr/vim-jsbeautify',     { 'for': ['javascript', 'json'] }
" Plug 'mephux/vim-jsfmt',           { 'for': ['javascript', 'json'] }
" Plug 'cohama/agit.vim' " git log viewer
" Plug 'jceb/vim-hier' " highlight quickfix errors
" Plug 'majutsushi/tagbar' " Lists ctags in right sidebar
" Plug 'jszakmeister/markdown2ctags' " markdown for tagbar
" Plug 'mustache/vim-mustache-handlebars', { 'for': ['html', 'handlebars', 'mustache'] }
" Plug 'mklabs/vim-backbone'
" Plug 'marijnh/tern_for_vim',         { 'for': ['javascript'] }
" Plug 'alx741/vinfo'
" Plug 'Valloric/YouCompleteMe'
" Plug 'Mizuchi/vim-ranger' " File explorer using ranger

" LEARNING
" -----------------------------------------
Plug 'Shougo/vimshell.vim'
Plug 'benekastah/neomake'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" VIM User Interface
" -------------------------------------------------------

" ===== Color theme ======

Plug 'kristijanhusak/vim-hybrid-material'
Plug 'gorodinskiy/vim-coloresque'
"Plug 'NSBrianWard/Glacier-Remixes', { 'rtp': 'vim'}
Plug 'mhartington/oceanic-next'


" ===== Navigation ======

Plug 'Shougo/vimfiler.vim'
Plug 'Shougo/neomru.vim'
Plug 'Shougo/unite.vim'
Plug 'gabesoft/vim-ags' " Ag search
Plug 'ap/vim-buftabline' " Buffers = tabs
Plug 'vim-scripts/BufOnly.vim' " Delete all buffers


" ===== Tmux integration ======

Plug 'edkolev/tmuxline.vim'
Plug 'wellle/tmux-complete.vim'
Plug 'tmux-plugins/vim-tmux'
Plug 'tmux-plugins/vim-tmux-focus-events'
Plug 'christoomey/vim-tmux-navigator'

" ===== Writing / Notes=====

Plug 'junegunn/goyo.vim'
Plug 'amix/vim-zenroom2'
Plug 'irrationalistic/vim-tasks'
" TODO: look into: guns/vim-clojure-static,


" ===== Programming Languages =====

" ---> Viml
Plug 'othree/vim-syntax-enhanced', {'for': 'vim'}

" ---> Erlang
Plug 'vim-erlang/vim-erlang-runtime', {'for': 'erlang'}
Plug 'vim-erlang/vim-erlang-omnicomplete', {'for': 'erlang'}
" Plug 'vim-erlang/vim-erlang-compiler', {'for': 'erlang'}
Plug 'vim-erlang/erlang-motions.vim', {'for': 'erlang'}
Plug 'vim-erlang/vim-dialyzer', {'for': 'erlang'}
Plug 'vim-scripts/vim-erlang-skeleteons', {'for': 'erlang'}
Plug 'kbj/vim-snipmate-erlang', {'for': 'erlang'}

" ---> Elixir
Plug 'elixir-lang/vim-elixir',       {'for': ['elixir'] }
Plug 'sanmiguel/helpex.vim',         {'for': ['elixir'] }

" ---> Go
Plug 'fatih/vim-go',                 { 'for': ['go'] }
Plug 'garyburd/go-explorer',         { 'for': ['go'] }

" ---> Rust
Plug 'cespare/vim-toml',             { 'for': ['toml'] }
Plug 'rust-lang/rust.vim',           { 'for': ['rust'] }

" ---> JavaScript
Plug 'pangloss/vim-javascript',      { 'for': ['javascript', 'json'] }
Plug 'elzr/vim-json',                { 'for': ['javascript', 'json'] }
Plug 'moll/vim-node',                { 'for': ['javascript', 'json'] }
Plug 'isRuslan/vim-es6',             { 'for': ['javascript', 'json'] }
Plug 'othree/javascript-libraries-syntax.vim', { 'for': ['javascript'] }
Plug 'othree/jspc.vim',             { 'for': ['javascript', 'json'] }
Plug 'othree/es.next.syntax.vim',             { 'for': ['javascript', 'json'] }
Plug 'othree/javascript-syntax.vim',             { 'for': ['javascript', 'json'] }
Plug 'othree/jsdoc-syntax.vim',             { 'for': ['javascript', 'json'] }

" ---> CSS / HTML
Plug 'ap/vim-css-color',             { 'for': ['css', 'html'] }
Plug 'hail2u/vim-css3-syntax',       { 'for': ['css', 'scss','sass'] }
Plug 'Glench/Vim-Jinja2-Syntax',     { 'for': ['html'] }
Plug 'cakebaker/scss-syntax.vim',    { 'for': ['scss', 'sass'] }
Plug 'groenewege/vim-less',          { 'for': ['less'] }

" ---> Markdown
Plug 'godlygeek/tabular',            { 'for': ['markdown', 'tasks'] }
Plug 'plasticboy/vim-markdown',      { 'for': ['markdown', 'tasks'] }

" ---> Android
Plug 'naseer/logcat',                { 'for': ['logcat'] }

" ---> Docker
Plug 'ekalinin/Dockerfile.vim',      { 'for': ['docker', 'Dockerfile'] }

" ----> Clojure
Plug 'kien/rainbow_parentheses.vim', { 'for': ['clojure'] }
Plug 'guns/vim-sexp',                { 'for': ['clojure'] }
Plug 'guns/vim-clojure-highlight',   { 'for': ['clojure'] }
Plug 'tpope/vim-fireplace',          { 'for': ['clojure'] }

" ===== Auto-complete / Text helpers =====
Plug 'Shougo/neocomplete.vim'
Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'
Plug 'Shougo/deoplete.nvim'
Plug 'cohama/lexima.vim'
Plug 'tomtom/tcomment_vim'
Plug 'tomtom/tlib_vim'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'ajh17/VimCompletesMe'
Plug 'vim-scripts/L9'
Plug 'othree/vim-autocomplpop'
Plug 'garbas/vim-snipmate'
Plug 'honza/vim-snippets'
Plug 'othree/csscomplete.vim'
Plug 'othree/html5.vim'
Plug 'othree/xml.vim'

call plug#end()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Directories
" ----------------------------------------
" Create directories
call system('mkdir -p ~/.config/nvim/.undo')
call system('mkdir -p ~/.config/nvim/.backup')
call system('mkdir -p ~/.config/nvim/.swap')

set undodir=~/.config/nvim/.undo//
" set backupdir=~/.config/nvim/.backup//
set directory=~/.config/nvim/.swap//
set nobackup
set shortmess+=A " Stop annoying swap warning

" Tabs
" ----------------------------------------
set expandtab " insert tabs rather than spaces for <Tab>
set smarttab " tab respects 'tabstop', 'shiftwidth', and 'softtabstop' hello my ba
set tabstop=4 " the visible width of tabs
set softtabstop=4 " edit as if the tabs are 4 characters wide
set shiftwidth=4 " number of spaces to use for indent and unindent
set hidden

" Clipboard
" ----------------------------------------
set clipboard=unnamedplus
set pastetoggle=<F3>

" Undo
" ----------------------------------------
set history=1000 " increase history from 20 default to 1000

" Color scheme
" ------------------------------------------
" let g:hybrid_use_Xresources = 1
" let g:enable_bold_font = 1
" colorscheme hybrid_material
syntax enable
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
colorscheme OceanicNext
set background=dark


" Line widths
" --------------------------------------------------------
set textwidth=78
set nowrap "turn on line wrapping
set wrapmargin=8 " wrap lines when coming within n characters from side
set linebreak " set soft wrapping
set showbreak="…" " show ellipsis at breaking
" set formatoptions-=t
set formatoptions+=l
if exists('+colorcolumn')
  set colorcolumn=80 " highlight three columns after 'textwidth'
endif
" let &showbreak = '↳ '
" set showbreak=↳\ \ \
" set relativenumber
" set cpo+=n


" Status
" --------------------------------------------------------
if has('statusline')
	set laststatus=1
	" Broken down into easily includeable segments
	set statusline=%<%f\    " Filename
	set statusline+=%w%h%m%r " Options
	" set statusline+=%{ObsessionStatus()} "  Git Hotness
	" set statusline+=%{fugitive#statusline()} "  Git Hotness
	set statusline+=\ [%{&ff}/%Y]            " filetype
	set statusline+=\ [%{getcwd()}]          " current dir
	set statusline+=%#warningmsg#
	" set statusline+=%{SyntasticStatuslineFlag()}
	set statusline+=%*
	" let g:syntastic_enable_signs=1
	set statusline+=%=%-14.(%l,%c%V%)\ %p%%  " Right aligned file nav info
endif


" Folding
" ----------------------------------------
"set foldmethod=syntax " Markers are used to specify folds.
"set foldlevel=1
set nofoldenable


" Searching
" ----------------------------------------
set ignorecase " case insensitive searching
set smartcase " case-sensitive if expresson contains a capital letter
set nohlsearch
set incsearch " set incremental search, like modern browsers
set nolazyredraw " don't redraw while executing macros
set magic " Enable extended regexes.
" set wildignore+=.final_builds/*,*/tmp/*,*/node_modules/*,*.o,*.obj,*.exe,*.so,*.dll,*.pyc,.svn,.hg,.bzr,.git,.sass-cache,*.class,*.scssc,*/Godeps/*
if executable('ag')
  set grepprg=ag\ --nogroup\ --column\ --smart-case\ --nocolor\ --follow
  set grepformat=%f:%l:%c:%m
endif


" Sounds
" ----------------------------------------
set noerrorbells
set novisualbell


" Mouse
" ----------------------------------------
set mousehide  " Hide mouse after chars typed
set mouse=a  " Mouse in all modes
set ttimeoutlen=-1

" Erlang
" ---------------------.-------------------

let omnicompleteDir = expand('~/.config/nvim/plugged/vim-erlang-omnicomplete')
let &runtimepath.=',~/.config/nvim'
let &runtimepath.=',' . omnicompleteDir
" let erlangCompilerDir = expand('~/.config/nvim/plugged/vim-erlang-compiler')
" let &runtimepath.=',' . erlangCompilerDir

" Source files
" ------------------------------------------
runtime! keybindings.vim
runtime! plugins.vim
