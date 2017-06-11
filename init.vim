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
" Plug 'kristijanhusak/vim-hybrid-material'
" Plug 'NSBrianWard/Glacier-Remixes', { 'rtp': 'vim'}
" Plug 'flazz/vim-colorschemes'
" Plug 'chriskempson/base16-vim'

" LEARNING
" -----------------------------------------
Plug 'Shougo/vimshell.vim'
Plug 'benekastah/neomake'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" VIM User Interface
" -------------------------------------------------------

" ===== Color theme ======

Plug 'dmix/oceanic-next'
" Plug 'gorodinskiy/vim-coloresque'
Plug 'lilydjwg/colorizer'

" ===== Navigation ======

Plug 'Shougo/vimfiler.vim'
Plug 'Shougo/neomru.vim'
Plug 'Shougo/unite.vim'
Plug 'gabesoft/vim-ags' " Ag search
Plug 'ap/vim-buftabline' " Buffers = tabs
Plug 'vim-scripts/BufOnly.vim' " Delete all buffers

" ===== Auto-complete / Text helpers =====
Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'
Plug 'Shougo/deoplete.nvim',          { 'do': ':UpdateRemotePlugins' }
Plug 'cohama/lexima.vim'
Plug 'tomtom/tcomment_vim'
Plug 'tomtom/tlib_vim'
Plug 'MarcWeber/vim-addon-mw-utils'
" Plug 'ajh17/VimCompletesMe'
" Plug 'vim-scripts/L9'
" Plug 'othree/vim-autocomplpop'
Plug 'garbas/vim-snipmate'
Plug 'honza/vim-snippets'
Plug 'othree/csscomplete.vim'
Plug 'othree/html5.vim'
" Plug 'othree/xml.vim'

" ===== Tmux integration ======
Plug 'edkolev/tmuxline.vim'
Plug 'wellle/tmux-complete.vim'
Plug 'tmux-plugins/vim-tmux'
Plug 'tmux-plugins/vim-tmux-focus-events'
Plug 'christoomey/vim-tmux-navigator'

" ===== Writing / Notes=====

Plug 'junegunn/goyo.vim'
Plug 'amix/vim-zenroom2'
Plug 'dmix/vim-tasks'
" Plug 'irrationalistic/vim-tasks'
" TODO: look into: guns/vim-clojure-static,

" ===== Linux =====

" Plug '', { 'for': [''] }

" ---> ZSH
Plug 'chrisbra/vim-zsh',             { 'for': ['zsh'] }
Plug 'rkitover/vimpager'

" ---> Logs
Plug 'thinca/vim-logcat',            { 'for': ['logcat'] }
Plug 'dzeban/vim-log-syntax',        { 'for': ['log'] }
Plug 'chr4/nginx.vim',               { 'for': ['nginx'] }



" ===== Programming Languages =====

" ---> Idris
Plug 'idris-hackers/idris-vim', {'for': ['idris', 'lidris']}

" ---> Viml
Plug 'othree/vim-syntax-enhanced', {'for': 'vim'}

" ---> Erlang
Plug 'vim-erlang/vim-erlang-runtime', {'for': 'erlang'}
Plug 'vim-erlang/vim-erlang-omnicomplete', {'for': 'erlang'}
Plug 'vim-erlang/erlang-motions.vim', {'for': 'erlang'}
Plug 'vim-erlang/vim-dialyzer', {'for': 'erlang'}
Plug 'vim-scripts/vim-erlang-skeleteons', {'for': 'erlang'}
Plug 'kbj/vim-snipmate-erlang', {'for': 'erlang'}

" ---> Ruby
Plug 'tpope/vim-rails', {'for': 'ruby'}
Plug 'tpope/vim-haml'
Plug 'kchmck/vim-coffee-script', {'for': 'coffee'}

" ---> Elixir
Plug 'elixir-lang/vim-elixir',       {'for': ['elixir'] }
Plug 'powerman/vim-plugin-AnsiEsc'
Plug 'slashmili/alchemist.vim',      {'for': ['elixir'] }
Plug 'lucidstack/hex.vim'
" Plug 'sanmiguel/helpex.vim',         {'for': ['elixir'] }

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
" Plug 'ap/vim-css-color',             { 'for': ['css', 'html'] }
Plug 'hail2u/vim-css3-syntax',       { 'for': ['css', 'scss','sass'] }
Plug 'Glench/Vim-Jinja2-Syntax',     { 'for': ['html'] }
Plug 'cakebaker/scss-syntax.vim',    { 'for': ['scss', 'sass'] }
Plug 'groenewege/vim-less',          { 'for': ['less'] }

" ---> Markdown
Plug 'godlygeek/tabular',            { 'for': ['markdown', 'tasks'] }
Plug 'plasticboy/vim-markdown',      { 'for': ['markdown', 'tasks'] }

" ---> Docker
Plug 'ekalinin/Dockerfile.vim',      { 'for': ['docker', 'Dockerfile'] }

" ----> Clojure
Plug 'kien/rainbow_parentheses.vim', { 'for': ['clojure'] }
Plug 'guns/vim-sexp',                { 'for': ['clojure'] }
Plug 'guns/vim-clojure-highlight',   { 'for': ['clojure'] }
Plug 'tpope/vim-fireplace',          { 'for': ['clojure'] }

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

set undodir=~/.config/nvim/.undo/
set undofile
" set backupdir=~/.config/nvim/.backup//
set directory=~/.config/nvim/.swap/
" set nobackup
set shortmess+=A " Stop annoying swap warning

" Tabs
" ----------------------------------------
set expandtab " insert tabs rather than spaces for <Tab>
set smarttab " tab respects 'tabstop', 'shiftwidth', and 'softtabstop' hello my ba
set tabstop=2 " the visible width of tabs
set softtabstop=2 " edit as if the tabs are 4 characters wide
set shiftwidth=2 " number of spaces to use for indent and unindent
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
"
" syntax enable
" let $NVIM_TUI_ENABLE_TRUE_COLOR=1
" set background=dark
" colorscheme base16-theme

" For Neovim 0.1.3 and 0.1.4
let $NVIM_TUI_ENABLE_TRUE_COLOR=1

" Or if you have Neovim >= 0.1.5
if (has("termguicolors"))
 set termguicolors
endif

" Theme
syntax enable
colorscheme OceanicNext

let g:airline_theme='oceanicnext'

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
" ----------------------------------------
let omnicompleteDir = expand('~/.config/nvim/plugged/vim-erlang-omnicomplete')
let &runtimepath.=',~/.config/nvim'
let &runtimepath.=',' . omnicompleteDir
" let erlangCompilerDir = expand('~/.config/nvim/plugged/vim-erlang-compiler')
" let &runtimepath.=',' . erlangCompilerDir

" Python
" ----------------------------------------
let g:python2_host_prog = '/usr/local/bin/python'
let g:python3_host_prog = '/usr/local/bin/python3'

" Source files
" ------------------------------------------
runtime! keybindings.vim
runtime! plugins.vim
