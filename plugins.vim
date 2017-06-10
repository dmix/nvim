" ==> autocmds.vim <=k
" Strip trailing whitespace
" ------------------------------------------
:augroup whitespace
  fun! <SID>StripTrailingWhitespaces()
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
  endfun
  autocmd FileType * autocmd BufWritePre <buffer> :call <SID>StripTrailingWhitespaces()
:augroup END

" Ruby
" ------------------------------------------
autocmd! BufWritePost *.rb Neomake
:augroup neomake
    autocmd! BufWritePost *.erl,*.hrl,*.config Neomake flycheck
:augroup END

" Erlang
" ------------------------------------------
:augroup erlang
    autocmd FileType erlang call s:erlang_ft_setting()
:augroup END

" Apply textwidth=72 on save
" ------------------------------------------
:augroup autogq
  autocmd FileType * setlocal tw=72
  autocmd FileType text,markdown,pandoc let b:vcm_tab_complete = 'dict'

  autocmd FileType garkdown,pandoc setlocal tw=72 fo=cqt wm=0
  autocmd FileType markdown,pandoc setlocal nofoldenable
:augroup END

" Filetype based commands or buffwrites
" ------------------------------------------
:augroup filecommandsgroup
  " Auto update vimrc on change
  autocmd! BufWritePost ~/.config/nvim/init.vim source ~/.config/nvim/init.vim
  autocmd! BufWritePost ~/.config/nvim/plugins.vim source ~/.config/nvim/init.vim
  autocmd! BufWritePost ~/.config/nvim/keybindings.vim source ~/.config/nvim/init.vim
  " autocmd Filetype markdown,html set spell
  " autocmd BufNewFile,BufRead *.ref set nospell
  autocmd FileType go noremap <buffer> <c-f> :GoFmt<cr>
  " autocmd Filetype javascript noremap <buffer> <c-f> :call JsBeautify()<cr>
  " autocmd FileType javascript noremap <buffer> <leader><f> :call JSFmt<cr>
  autocmd FileType html noremap <buffer> <c-f> :call HtmlBeautify()<cr>
  autocmd FileType css,scss,sass noremap <buffer> <c-f> :call CSSBeautify()<cr>
:augroup END

" Custom tab spacing
" ------------------------------------------
:augroup tabgroup
  autocmd FileType make,erlang setlocal noexpandtab
  autocmd FileType go setlocal tabstop=4 shiftwidth=4 noexpandtab
  autocmd FileType go autocmd BufWritePre <buffer> GoFmt
  autocmd FileType html,hbs,javascript setlocal tabstop=4 softtabstop=4 expandtab shiftwidth=4 smarttab
:augroup END

" Fix incorrect filetypes
" ------------------------------------------
:augroup fixfiletypes
"autocmd BufRead,BufNewFile *.md,*.ref,*.todo :Goyo
    autocmd BufRead,BufNewFile *mutt-* setfiletype mail
  " */notes/*.todo,
  autocmd BufNewFile,BufRead *.md,*.ref,README set filetype=markdown
  autocmd BufNewFile,BufRead zsh*,z_*,*.exports,.aliases,*.alias,*.zsh set filetype=zsh
:augroup END


" Use Vim's syntax from :messages on *.logs
" ------------------------------------------
autocmd BufNewFile,BufReadPost *messages* :set filetype=messages
autocmd InsertEnter,InsertLeave * set cul!

" Clojure
" ------------------------------------------
" let g:rbpt_colorpairs = [
"     \ ['brown',       'RoyalBlue3'],
"     \ ['Darkblue',    'SeaGreen3'],
"     \ ['darkgray',    'DarkOrchid3'],
"     \ ['darkgreen',   'firebrick3'],
"     \ ['darkcyan',    'RoyalBlue3'],
"     \ ['darkred',     'SeaGreen3'],
"     \ ['darkmagenta', 'DarkOrchid3'],
"     \ ['brown',       'firebrick3'],
"     \ ['gray',        'RoyalBlue3'],
"     \ ['black',       'SeaGreen3'],
"     \ ['darkmagenta', 'DarkOrchid3'],
"     \ ['Darkblue',    'firebrick3'],
"     \ ['darkgreen',   'RoyalBlue3'],
"     \ ['darkcyan',    'SeaGreen3'],
"     \ ['darkred',     'DarkOrchid3'],
"     \ ['red',         'firebrick3'],
"     \ ]
" " let g:rbpt_max = 16
" " let g:rbpt_loadcmd_toggle = 0
" " autocmd FileType clojure RainbowParenthesesToggle
"
" nmap <leader>r :RainbowParenthesesToggle<CR>

" " Tmux
" " ---------------------------------------------------------------------
" let g:tmux_navigator_no_mappings = 1
"
" nnoremap <silent> <D-h> :TmuxNavigateLeft<cr>.
" nnoremap <silent> <D-j> :TmuxNavigateDown<cr>
" nnoremap <silent> <D-k> :TmuxNavigateUp<cr>
" nnoremap <silent> <D-l> :TmuxNavigateRight<cr>
" " nnoremap <silent> {Previous-Mapping} :TmuxNavigatePrevious<cr>
"
" let g:tmuxcomplete#trigger = ''

" Vimux
" ---------------------------------------------------------------------
" map <Leader>rr :call VimuxRunCommand("clear; ./" . bufname("%"))<CR>
" map <Leader>mm :call VimuxRunCommand("clear; make")<CR>
"
" function! NpmReadme()
"   call VimuxRunCommand("readme " . @v)
"   call VimuxSendKeys("Enter")
" endfunction
"
" " If text is selected, save it in the v buffer and send that buffer it to tmux
" vmap <Leader>rm "vy :call VimuxRunCommand("readme " . @v)<CR>
"

" " ==> plugin_autoclose.vim <==
" " ---------------------------------------------------------------------
"
" " vim mode-switch lag fix
" if ! has("gui_running")
"   set ttimeoutlen=10
"   augroup FastEscape autocmd!
"     au InsertEnter * set timeoutlen=50
"     au InsertLeave * set timeoutlen=1000
"   augroup END
" endif


" ==> plugin_golang.vim <==
" ---------------------------------------------------------------------

let g:go_fmt_command = "goimports"
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_snippet_engine = "neosnippet"
let g:go_fmt_autosave = 0


"==> plugin_json.vim <==
" ---------------------------------------------------------------------

let g:vim_json_syntax_conceal = 0


"==> plugin_lengthmatters.vim <==
" ---------------------------------------------------------------------

" let g:lengthmatters_on_by_default = 0
" let g:lengthmatters_use_textwidth = 0


" ==> plugin_tagbar.vim <==
" ---------------------------------------------------------------------

" let g:tagbar_type_markdown = {
"     \ 'ctagstype': 'markdown',
"     \ 'ctagsbin' : '~/.vim/plugged/markdown2ctags/markdown2ctags.py',
"     \ 'ctagsargs' : '-f - --sort=yes',
"     \ 'kinds' : [
"         \ 's:sections',
"         \ 'i:images'
"     \ ],
"     \ 'sro' : '|',
"     \ 'kind2scope' : {
"         \ 's' : 'section',
"     \ },
"     \ 'sort': 0,
" \ }
"
" let g:tagbar_type_go = {
"     \ 'ctagstype': 'go',
"     \ 'kinds' : [
"         \'p:package',
"         \'f:function',
"         \'v:variables',
"         \'t:type',
"         \'c:const'
"     \]
" \}
"
" let g:tagbar_type_make = {
"             \ 'kinds':[
"                 \ 'm:macros',
"                 \ 't:targets'
"             \ ]
" \}
"
" let g:tagbar_type_css = {
"     \ 'ctagstype' : 'Css',
"     \ 'kinds'     : [
"         \ 'c:classes',
"         \ 's:selectors',
"         \ 'i:identities'
"     \ ]
"     \ }
"
" let g:tagbar_type_ruby = {
"     \ 'kinds' : [
"         \ 'm:modules',
"         \ 'c:classes',
"         \ 'd:describes',
"         \ 'C:contexts',
"         \ 'f:methods',
"         \ 'F:singleton methods'
"     \ ]
"     \ }
"
" nmap <leader>t :TagbarToggle<CR>

"
" " ==> plugin_undotree.vim <==
" " ---------------------------------------------------------------------
"
" nnoremap <leader>u :UndotreeToggle<cr>
"


" ==> plugin_vimfiler.vim <==
" ---------------------------------------------------------------------

let g:vimfiler_as_default_explore = 1
let g:vimfiler_safe_mode_by_default = 0



" Plugins Marked for removal
" ---------------------------------------------------------------------
  " Plug 'vim-ruby/vim-ruby',          { 'for': ['ruby', 'rake'] }
  " Plug 'tpope/vim-bundler',          { 'for': ['ruby', 'rake'] }
  " Plug 'rstacruz/sparkup',           { 'for': ['html', 'handlebars', 'mustache'] }
  " Plug 'whatyouhide/vim-gotham'

" jsmft
" ---------------------------------------------------------------------
let g:js_fmt_autosave = 0
let g:js_fmt_fail_silently = 1

" vim-markdown
" ---------------------------------------------------------------------
let g:vim_markdown_frontmatter=1

" gitgutter
" ---------------------------------------------------------------------
let g:gitgutter_realtime = 0
let g:gitgutter_eager = 0

" " tmuxline
" " ---------------------------------------------------------------------
let g:tmuxline_powerline_separators = 0
" let g:tmuxline_theme = 'lightline'
let g:tmuxline_preset = {
      \'a'    : '#S',
      \'b'    : '#W',
      \'c'    : '#H',
      \'win'  : '#I #W',
      \'cwin' : '#I #W',
      \'x'    : '%a',
      \'y'    : '#W %R',
      \'z'    : '#H'}

" vim-easy-alin
" ---------------------------------------------------------------------
" " Start interactive EasyAlign in visual mode (e.g. vipga)
" xmap ga <Plug>(EasyAlign)
" " Start interactive EasyAlign for a motion/text object (e.g. gaip)
" nmap ga <Plug>(EasyAlign)

"
" vim-compiler-go
" ---------------------------------------------------------------------
let g:golang_goroot = "/home/control/go"

" vim-go
" ---------------------------------------------------------------------
let g:go_disable_autoinstall = 0

" Highlight
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2schope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
\ }


" vim-tasks
" ---------------------------------------------------------------------
let g:TasksMarkerBase = '☐ '
let g:TasksMarkerDone = '✔ '
let g:TasksMarkerCancelled = '✘'
let g:TasksDateFormat = ''
let g:TasksAttributeMarker = '@'
let g:TasksArchiveSeparator = '＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿'

" Buffer
" -------------------------------------------------------------------
let g:buftabline_show = 1
let g:buftabline_numbers = 1

hi BufTabLineActive ctermbg=0 ctermfg=gray
hi BufTabLineCurrent ctermbg=234 ctermfg=25
hi BufTabLineHidden ctermbg=232 ctermfg=240
hi BufTabLineFill ctermbg=232

" Goyo
" ------------
function! s:goyo_enter()
  silent! set showtabline=0
endfunction
autocmd! User GoyoEnter nested call <SID>goyo_enter()

" Erlang
" ------------------------------------------
:augroup erlang
    autocmd BufRead,BufNewFile *.erl,*.es.*.hrl,*.yaws,*.xrl set expandtab
    au BufNewFile,BufRead *.erl,*.es,*.hrl,*.yaws,*.xrl setf erlang
:augroup END
" Erlang Skeletons
" -------------------------------------------------------------------
let g:erl_author="Tim Godin <t1m0thyg0d1n1987@gmail.com>"
let g:erl_company=""
let g:erl_replace_buffer=1
let g:erl_tpl_dir="/home//erlang/templates"
" Variables:
" $basename Current buffer's filename without extension
" $author Defaults to whoami if undefined
" $company Defaults to $author if undefined
" $fulldate Defaults to python's datetime.now()
" $year Defaults to python's datetime.now().year


" Erlang NeoMake
" -------------------------------------------------------------------
" Lovingly ripped off from github.com/aerosol/dotfiles
function! s:erlang_ft_setting()
    " --- Options
    let g:plug_dir = expand('~/.config/nvim/plugged')
    let g:erlang_tags_ignore = ".eunit"
    let g:neomake_serialize = 1
    let b:surround_45 = "<<\"\r\">>"
    set suffixesadd+=.erl
    set suffixesadd+=.hrl
    set suffixes+=.beam
    set path+=src
    set path+=deps/**

    " " --- Flycheck
    " let g:neomake_erlang_flycheck_maker = {
    "     \ 'exe': g:plug_dir . '/vim-erlang-compiler/compiler/erlang_check.erl',
    "     \ 'args': [],
    "     \ 'errorformat': '%f:%l: %tarning: %m,%f:%l: %m,%f: %m',
    "     \ }
    "
    " " --- Dialyzer
    " let g:neomake_erlang_dialyzer_maker = {
    "     \ 'exe': 'make',
    "     \ 'args': ['dialyzer'],
    "     \ 'append_file': 0
    "     \ }
    "
    " --- EUnit
    " let eunit_efm = ''
    " let eunit_efm .= '%E%m: %.%#...*failed*,'
    " let eunit_efm .= '%C%>in function %m (%f\, line %l),'
    " let eunit_efm .= '%Z**error,%Z**throw,%Z**exit'
    "
    " " TODO This barfs on .config files because they are also ft=erlang lol
    " let g:neomake_erlang_eunit_maker = {
    "     \ 'exe': 'rebar3',
    "     \ 'args': ['-q', 'eunit', 'skip_deps=true', 'suites=' . expand('%:t:r')],
    "     \ 'buffer_output': 1,
    "     \ 'append_file': 0,
    "     \ 'errorformat': eunit_efm,
    "     \ }
    "
    " let g:neomake_erlang_eunit_dev_maker = deepcopy(g:neomake_erlang_eunit_maker)
    " let g:neomake_erlang_eunit_dev_maker.exe = 'cat'
    " let g:neomake_erlang_eunit_dev_maker.args = ['rebar-out.log', 'noexist']


    " --- EQC
    " let g:neomake_erlang_eqc_maker = {
    "             \ 'exe': 'rebar3',
    "             \ 'args': ['-q', 'qc'],
    "             \ 'buffer_output': 1,
    "             \ 'append_file': 0
    "             \ }

    " TODO Add xref maker
    " TODO Add ct maker
    " TODO Add typer maker
    " TODO Add dialyzer maker

    " let g:neomake_erlang_enabled_makers = ['flycheck', 'eunit', 'eqc', 'dialyzer']
    let g:neomake_erlang_enabled_makers = ['flycheck']
endfunction


" VimCompleteMe
" --------------------------------------------------------------------
" b:vcm_tab_complete'|          Use a specific type of completion.
" g:vcm_direction'|             Controls the direction of the completion.
" g:vcm_s_tab_behavior'|        Controls the behavior of Shift-Tab.
" g:vcm_default_maps'|          Set up default maps (Tab + Shift Tab)
"     set dictionary=/usr/share/dict/words
"
"

" AutoPopup
" ---------------------------------------------------------------------
let g:acp_enableAtStartup = 1
"         If non-zero, auto-popup is enabled at startup.
"
"                                                       *g:acp_mappingDriven*  >
let g:acp_mappingDriven = 1
" <
"         If non-zero, auto-popup is triggered by key mappings instead of
"         |CursorMovedI| event. This is useful to avoid auto-popup by moving
"         cursor in Insert mode.
"
"                                                    *g:acp_ignorecaseOption*  >
let g:acp_ignorecaseOption = 1
" <
"         Value set to 'ignorecase' temporarily when auto-popup.
"
"                                                      *g:acp_completeOption*  >
let g:acp_completeOption = '.,w,b,k'
" <
"         Value set to 'complete' temporarily when auto-popup.
"
"                                                  *g:acp_completeoptPreview*  >
let g:acp_completeoptPreview = 1
" <
"         If non-zero, "preview" is added to 'completeopt' when auto-popup.
"
"                                         *g:acp_behaviorUserDefinedFunction*  >
let g:acp_behaviorUserDefinedFunction = ''
" <
"     |g:acp_behavior-completefunc| for user-defined completion. If empty,
"         this completion will be never attempted.
"
"                                            *g:acp_behaviorUserDefinedMeets*  >
let g:acp_behaviorUserDefinedMeets = ''
" <
" |g:acp_behavior-meets| for user-defined completion. If empty, this
"         completion will be never attempted.
"
" "                                              *g:acp_behaviorSnipmateLength*  >
let g:acp_behaviorSnipmateLength = 2
" <
"         Pattern before the cursor, which are needed to attempt
"         snipMate-trigger completion.
"
"                                              *g:acp_behaviorKeywordCommand*  >
let g:acp_behaviorKeywordCommand = "\<C-n>"
" <
"         Command for keyword completion. This option is usually set "\<C-n>" or
"         "\<C-p>".
"
"                                               *g:acp_behaviorKeywordLength*  >
let g:acp_behaviorKeywordLength = 2
" <
"         Length of keyword characters before the cursor, which are needed to
"         attempt keyword completion. If negative value, this completion will be
"         never attempted.
"
"                                              *g:acp_behaviorKeywordIgnores*  >
" let g:acp_behaviorKeywordIgnores = []
" " <
" "         List of string. If a word before the cursor matches to the front part
" "         of one of them, keyword completion won't be attempted.
" "
" "         E.g., when there are too many keywords beginning with "get" for the
" "         completion and auto-popup by entering "g", "ge", or "get" causes
" "         response degradation, set ["get"] to this option and avoid it.
" "
" "                                                  *g:acp_behaviorFileLength*  >
let g:acp_behaviorFileLength = 2
" <
"         Length of filename characters before the cursor, which are needed to
"         attempt filename completion. If negative value, this completion will
"         be never attempted.
"
"                                        *g:acp_behaviorRubyOmniMethodLength*  >
let g:acp_behaviorRubyOmniMethodLength = 1
" <
"         Length of keyword characters before the cursor, which are needed to
"         attempt ruby omni-completion for methods. If negative value, this
"         completion will be never attempted.
"
"                                        *g:acp_behaviorRubyOmniSymbolLength*  >
let g:acp_behaviorRubyOmniSymbolLength = 1
" <
"         Length of keyword characters before the cursor, which are needed to
"         attempt ruby omni-completion for symbols. If negative value, this
"         completion will be never attempted.
"
"                                            *g:acp_behaviorPythonOmniLength*  >
let g:acp_behaviorPythonOmniLength = 1
" <
"         Length of keyword characters before the cursor, which are needed to
"         attempt python omni-completion. If negative value, this completion
"         will be never attempted.
"
"                                              *g:acp_behaviorPerlOmniLength*  >
" let g:acp_behaviorPerlOmniLength = -1
" <
"         Length of keyword characters before the cursor, which are needed to
"         attempt perl omni-completion. If negative value, this completion will
"         be never attempted.
"
"         See also: |acp-perl-omni|
"
"                                               *g:acp_behaviorXmlOmniLength*  >
let g:acp_behaviorXmlOmniLength = 1
" <
"         Length of keyword characters before the cursor, which are needed to
"         attempt XML omni-completion. If negative value, this completion will
"         be never attempted.
"
"                                              *g:acp_behaviorHtmlOmniLength*  >
let g:acp_behaviorHtmlOmniLength = 1
" <
"         Length of keyword characters before the cursor, which are needed to
"         attempt HTML omni-completion. If negative value, this completion will
"         be never attempted.
"
"                                       *g:acp_behaviorCssOmniPropertyLength*  >
let g:acp_behaviorCssOmniPropertyLength = 1
" <
"         Length of keyword characters before the cursor, which are needed to
"         attempt CSS omni-completion for properties. If negative value, this
"         completion will be never attempted.
"
"                                          *g:acp_behaviorCssOmniValueLength*  >
let g:acp_behaviorCssOmniValueLength = 1
" <
"         Length of keyword characters before the cursor, which are needed to
"         attempt CSS omni-completion for values. If negative value, this
"         completion will be never attempted.
"
"                                                            *g:acp_behavior*  >
" let g:acp_behavior = {}
" <
"         This option is for advanced users. This setting overrides other
"         behavior options. This is a |Dictionary|. Each key corresponds to a
"         filetype. '*' is default. Each value is a list. These are attempted in
"         sequence until completion item is found. Each element is a
"         |Dictionary| which has following items:
"
"         "command":                                    *g:acp_behavior-command*
"           Command to be fed to open popup menu for completions.
"
"         "completefunc":                          *g:acp_behavior-completefunc*
"           'completefunc' will be set to this user-provided function during the
"           completion. Only makes sense when "command" is "<C-x><C-u>".
"
"         "meets":                                        *g:acp_behavior-meets*
"           Name of the function which dicides whether or not to attempt this
"           completion. It will be attempted if this function returns non-zero.
"           This function takes a text before the cursor.
"
"         "onPopupClose":                          *g:acp_behavior-onPopupClose*
"           Name of the function which is called when popup menu for this
"           completion is closed. Following completions will be suppressed if
"           this function returns zero.
"
"         "repeat":                                      *g:acp_behavior-repeat*
"           If non-zero, the last completion is automatically repeated.
"
"

" deoplete.nvim
" --------------------------------------------------------
" Enable snipMate compatibility feature.
let g:neosnippet#enable_snipmate_compatibility = 1
" Tell Neosnippet about the other snippets
" let g:neosnippet#snippets_directory='~/.config/nvim/snippets/'
let g:neocomplete#enable_at_startup = 1
let g:deoplete#enable_at_startup = 1
let g:alchemist#elixir_erlang_src='/usr/lib/erlang'

" Plugin key-mappings.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
"imap <expr><TAB>
" \ pumvisible() ? "\<C-n>" :
" \ neosnippet#expandable_or_jumpable() ?
" \    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

" For conceal markers.
if has('conceal')
  set conceallevel=2 concealcursor=niv
endif

" neocomplete
" ---------------------------------------------------------------------
" Disable AutoComplPop.
" let g:acp_enableAtStartup = 0
" " Use neocomplete.
" let g:neocomplete#enable_at_startup = 1
" " Use smartcase.
" let g:neocomplete#enable_smart_case = 1
" " Set minimum syntax keyword length.
" let g:neocomplete#sources#syntax#min_keyword_length = 3
" let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'
"
" " Define dictionary.
" let g:neocomplete#sources#dictionary#dictionaries = {
"     \ 'default' : '',
"     \ 'vimshell' : $HOME.'/.vimshell_hist',
"     \ 'scheme' : $HOME.'/.gosh_completions'
"         \ }
"
" " Define keyword.
" if !exists('g:neocomplete#keyword_patterns')
"     let g:neocomplete#keyword_patterns = {}
" endif
" let g:neocomplete#keyword_patterns['default'] = '\h\w*'
"
" " Plugin key-mappings.
" inoremap <expr><C-g>     neocomplete#undo_completion()
" inoremap <expr><C-l>     neocomplete#complete_common_string()
"
" " Recommended key-mappings.
" " <CR>: close popup and save indent.
" inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
" function! s:my_cr_function()
"   return (pumvisible() ? "\<C-y>" : "" ) . "\<CR>"
"   " For no inserting <CR> key.
"   "return pumvisible() ? "\<C-y>" : "\<CR>"
" endfunction
" " <TAB>: completion.
" inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" " <C-h>, <BS>: close popup and delete backword char.
" inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
" inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
" " Close popup by <Space>.
" "inoremap <expr><Space> pumvisible() ? "\<C-y>" : "\<Space>"
"
" " AutoComplPop like behavior.
" "let g:neocomplete#enable_auto_select = 1
"
" " Shell like behavior(not recommended).
" "set completeopt+=longest
" "let g:neocomplete#enable_auto_select = 1
" "let g:neocomplete#disable_auto_complete = 1
" "inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<C-x>\<C-u>"
"
" " Enable omni completion.
" autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
" autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
" autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
" autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
" autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
"
" " Enable heavy omni completion.
" if !exists('g:neocomplete#sources#omni#input_patterns')
let g:neocomplete#sources#omni#input_patterns = {}
" endif
" "let g:neocomplete#sources#omni#input_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
" "let g:neocomplete#sources#omni#input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
" "let g:neocomplete#sources#omni#input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'
"
" " Plugin key-mappings.
" imap <C-k>     <Plug>(neosnippet_expand_or_jump)
" smap <C-k>     <Plug>(neosnippet_expand_or_jump)
" xmap <C-k>     <Plug>(neosnippet_expand_target)
"
" " SuperTab like snippets behavior.
" "imap <expr><TAB>
" " \ pumvisible() ? "\<C-n>" :
" " \ neosnippet#expandable_or_jumpable() ?
" " \    "\<TAB>" : "\<Plug>(neosnippet_expand_or_jump)"
" smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
" \ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
"
" " For conceal markers.
" if has('conceal')
"   set conceallevel=2 concealcursor=niv
" endif
"
" " Enable snipMate compatibility feature.
" let g:neosnippet#enable_snipmate_compatibility = 1
"
" " Tell Neosnippet about the other snippets
" let g:neosnippet#snippets_directory='~/.vim/bundle/vim-snippets/snippets'

" Idris.vim
" --------------------------------------------------------------------------
" let g:idris_conceal = 0

" NeoMake
" --------------------------------------------------------------------------
let g:neomake_javascript_enabled_makers = ['jshint']
let g:neomake_ruby_enabled_makers = ['rubocop']

