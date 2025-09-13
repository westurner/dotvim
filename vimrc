" .vimrc
" ==========
" ::
"   git clone https://github.com/westurner/dotvim
"   git clone ssh://git@github.com/westurner/dotvim
"   make help
" 
" See also:
" - SpaceVim
"   - Src: https://github.com/SpaceVim/SpaceVim
"   - https://westurner.github.io/tools/#spacevim
"
" Vim Reference
" ---------------
"
"  ===============  ==  ==========================  ==========
"  Command/Keyseq   --  description                 [helptag]
"  ===============  ==  ==========================  =========
"  C- == <CTRL>+    --  (so, 'C-o' means ``<CTRL>`` and the ``o`` key)
"  :[cmd]           --  (type ':' (w/o the quotes),
"                       type an [optional] command (w/o brackets),
"                       and then press <enter>)
"
"  :Help            --  list commented mappings with vimgrep in a quickfix window
"  :Dotvimhelp      --  list commented mappings
"  :ListMappings    --  list commented mappings
"
"  :Dr :DotvimReload  --  reload vim configuration (on top of existing config)
"                       (may require a maximize/unmaximize
"                       to re-fill the window after reload)
"
"  :PatchColors     --  patch e.g. :Gvdiff colors to a dark theme
"
"  :help            --  open vim help               [help]
"  :help help       --  open vim help for vim help  [help]
"  :help <tag>      --  open vim help for a tag     [<tag>]
"                       tag: 'Q_bu', 'Q_wi'         [quickref, Q_bu, Q_wi]
"                       tag: */plugin/doc/<tag>.txt
"  :help vimtutor   --  open vim vimtutor tutorial            [ vimtutor ]
"  :help quickref   --  open vim quick reference          [quickref, Q_bu]
"
"  gx               --  open the url under the cursor
"                       with g:net_rw_browsex_viewer="xdg-open"
"
"  :<up> :<down>    --  search backward / forward through vim command history
"  /<up> /<down>    --  search backward / forward through vim search history
"
"  :<tab> [<tab>]+  --  list available vim commands (and cycle thru with tab)
"  :<tab> <left>|rt --  list available vim commands (and cycle with arrow keys)
"
"  C-]              --  follow a tag (e.g. in a help document, )
"  [[               --  go up a section                             [ [[ ]
"                       :help quickref ; /Q_bu ; C-] ; [[
"                       :help Q_bu ; 2j ; C-] ; [[
"  C-o              --  goto jumplist previous position [ctrl-O, jumplist]
"  C-i              --  goto jumplist next position     [ctrl-i, jumplist]
"  ``               --  goto previous position      [``, restore-position]
"
"  fn-enter         --  insert on a mac keyboard
"  fn-shift-enter   --  paste on a mac keyboard
"
"  C-s              --  save
"
"  C-q              --  quit but prompt to save first
"  :q               --  quit but prompt to save first   [q]
"  :q!              --  quit without saving             [q]
"  :qa!             --  quit all without saving         [qa]
"  :wq              --  write and quit now             [wq, :SaveSession]
"  q:               --  show command line (C-c C-c)     [q:]
"
"  %                --  variable: current filename      [%]
"  %:p              --  variable: current filepath ~="  abspath(expanduser())[%:p]
"  %                --  motion: find the next instance of selected word [%]
"
"  :pwd             --  print the working directory path
"                       for the window (if :lcd has been used)
"                       OR for all windows
"  :cd  <path>      --  change the working directory for all windows
"  :lcd <path>      --  change the working directory for the current window
"  :Cdhere          --  :cd %:p:h    ~= $ cd "$(dirname "$current_file")"
"  :LCdhere         --  :lcd %:p:h   ~= $ lcd "$(dirname "$current_file")"
"  echo "venv.vim"
"    :Cdhelp                --  print configured vim Cdaliases
"    :Cdwrd :Cdw            --  :cd $_WRD
"    :Cdsrc :Cds            --  :cd $_SRC
"    :Cdvirtualenv          --  :cd $VIRTUAL_ENV
"    :Cdwrk                 --  :cd $__WRK
"    :[L]Cdhome :[L]Cdh     --  :cd $HOME
"    :Lcdwrd :LCdw          --  :lcd $_WRD
"
"  :buffers         --  list vim buffers            [Q_bu]
"  :b3   :buffer 3  --  go to vim buffer 3          [:b :buffer]
"
"  echo $VIMRUNTIME --  /{colors,syntax,macros}     [$VIMRUNTIME]
"  :set [all]       --  list all nondefault options [set, redir, SaveSession]
"  :map             --  list actual mappings        [Q_km]
"  :scriptnames     --  list scripts and plugins    [scriptnames]
"
"  e[dit]           --  reload the current file
"  e <path>         --  open path                   [edit, Q_ed]
"  e <pa...><tab>   --  open path with tab-completion [wildmenu, wildmode]
"  :tabnew <path>   --  open path in a new tab
"  :tabprev         --  go to previous tab
"  :tabnext         --  go to next tab
"  C-PageUp         --  go to previous tab
"  C-PageDown       --  go to next tab

"  :read path       --  insert from path after cursor
"  :read !cmd       --  insert 'cmd' output after cursor
"  :%! [cmd]        --  buffer > stdin > [cmd] > stdout => buffer.replace
"  :new | r ! ls -al #   -- open a new buffer, read output from cmd
"                           w/ '#' replaced with the current filename (%)
"  :put %           --  put % (current filename) after the cursor [help put]
"
"  v    hjkl        -- visual selection mode (ldur)
"  C-v  hjkl        -- visual selection whole lines 
"  gv               -- re-select the previous visual seelction
"
"  h, j, k, l       --  left, down, up, right       [Q_lr, Q_ud] 
"  C-E              --  move N lines downwards (1)
"  C-D              --  move N lines Downwards (1/2 move)
"  C-F              --  move N pages Forwards (downwards)
"  C-Y              --  move N lines upwards (default: 1)
"  C-U              --  move N lines Upwards (default: 1/2 move)
"  C-B              --  move N pages Backwards (upwards)
"  [n]G             --  goto line #
"  g <C-g>          --  whereami
"
"  u                --  undo
"  ^r               --  redo
"
" Modes             --  type 'i' for insert [i I a A v c-v
"  i                --  insert mode
"  I                --  insert mode at beginning of line
"  a                --  append mode
"  A                --  append mode at end of line
"  o                --  begin a new line below current and insert
"  O                --  begin a new line above current and insert
"  r                --  replace character mode (1 char; return to prev mode)
"  R                --  replace within line mode
"  v                --  visual mode
"  c-v              --  visual block mode
"  <Esc>            --  command mode (escape to command mode)
"  ;;               --  command mode (escape to command mode)
"  q:               --  command line window mode
"    [cmd] <enter>  --  <enter> to execute command
"    c-c <enter>    -- <Ctrl-c> <enter> to close command line window
"
" Vim Marks
"  m[a-z]{1}        --  set mark
"  `[a-z]{1}        --  goto mark
"  '[a-z]{1}        --  goto mark
"
" Line numbers
"  :set number      --  show line numbers
"  :set nonumber    --  show line numbers
"  :set rnu         --  relative line numbering :set relativenumbers
"  :set norelativenumbers  - no relative line numbering :set norelativenumbers
"
" Macros
"  q[a-z]{1}        --  start recording
"  q                --  stop recording
"  @[a-z]{1}        --  replay macro
"  @@               --  repeat macro
"  q2<seq><esc>q;@2 --  record macro to 2 and repeat
"
" Searching
"  /<pattern>       --  search for term
"  *                --  search for term under cursor next
"  n                --  next search ocurrence
"  #                --  search for term under cursor previous
"  N                --  previous search ocurrence
"
"  :[l][vim]grep <pattern> <file>
"
"  :cl   :ll        --  list list
"  :copen :lopen    --  open list
"  :cw   :lw        --  toggle show list
"  :ccl[ose] :lcl   --  close list
"  :cn   :ln        --  next <Enter>
"  :cp   :lp        --  prev <Enter>
"  :cc!  :lc [nr]   --  jump to [nr]
"  :cfir :cla       --  first, last
"
" Yanking and Pasting
"  y[a-z]           --  yank to buffer [a-z]
"  p[a-z]           --  paste from buffer [a-z]
"  ]p               --  paste to level
"
" Indenting/Shifting Blocks
"  [n]<             --  shift block left
"  [n]>             --  shift block right
"
"
" Folding
"  :help Fold       --  also usr_28
"  :set nofen       --  stop folding
"  zf               --  create fold
"  zo               --  fold open
"  zO               --  fold open recursive
"  zc               --  fold close
"  zC               --  fold close recursive
"  zx               --  undo manual fold actions
"  zX               --  undo manual fold actions and recompute
"  zM               --  fold close all but current (focus)
"  zR               --  fold open all (review)
"
"  :Voom [format]   --  open VOom outline sidebar
"  <leader> t       --  :TagBarToggle " outline sidebar
"
" Etiquette
"  <leader> i       --  toggle unprintables
"  <leader> sd      --  toggle highlight EOL whitespace
"  <leader> sc      --  clear highlighting
"

" Terminal / windows
"  :terminal        -- open a terminal split in the current tab
"  :tabnew | term   -- open a terminal in a new tab
"  C-w C-w          -- escape a terminal
"  C-w :            -- escape out of a terminal to enter vim commands
"  C-w T            -- move a buffer to a new tab           [Ctrl-W_T]
"  C-w n            -- make a new window
"  C-w N            -- change to navigation mode? TODO
"  C-w "            -- paste into a :terminal
"  C-w :dis         -- list paste buffers and [...]
"C-w n            -- next window || new window?
"  C-w p            -- prev window

" ##
" ## g:__sfile__dirname     -- directory containing this vimrc script
"                              after symlinks
"                              ~dirname(abspath(realpath(__file__)))
let g:__sfile__dirname=fnamemodify(resolve(expand("<sfile>:p")), ":h")
" ##

"  Source_dotvim(filename)  -- source dirname(this_vimrc)/filename
function! Source_dotvim(filename)
    let l:vimrcfilename=g:__sfile__dirname . "/" . a:filename
    if filereadable(l:vimrcfilename) && !empty(l:vimrcfilename)
        "source s:_vimrcfilename "this doesn't work, so exec:
        exec "source " . fnameescape(l:vimrcfilename)
    "else
    "    echo l:vimrcfilename . " empty or not found."
    endif
endfunction 

" ##
" ## source vimrc.local.01-env.vimrc
call Source_dotvim("vimrc.local.01-env.vimrc")
" ##

" set window title to vim title (display full path)
set title

"set nocolorcolumn/colorcolumn=0 on cope
autocmd BufWinEnter quickfix setlocal colorcolumn=0

function! ListMappings()
"  :ListMappings     -- list .vimrc(.*) comments (n(next) and p(rev))
    cd ~/.vim
    vimgrep '\s*"\s\{1,}' ~/.vimrc ~/.vim/vimrc.*.bundles.vimrc
    copen
    cd -
endfunction
command! -nargs=0 ListMappings call ListMappings()

function! DotvimHelp()
"  :DotvimHelp       -- "
"  :Help             -- "
    :ListMappings
endfunction
command! -nargs=0 DotvimHelp call DotvimHelp()
command! -nargs=0 Help call DotvimHelp()

if !exists("*DotvimReload")
"  :DotvimReload   -- reload ~/.vimrc
"  :Reload         -- reload ~/.vimrc
"  :Dr             -- reload ~/.vimrc
  function! DotvimReload()
      echo expand("%") expand("%:h")
      execute "source" "~/.vimrc"
      "call PatchColors()
  endfunction
  command! -nargs=0 DotvimReload call DotvimReload()
  command! -nargs=0 Reload call DotvimReload()
  command! -nargs=0 Dr call DotvimReload()
endif
"
"    seeAlso: :SaveSession, :RestoreSession (*)     [help SaveSession]

function! Path()
"  :Path()   -- echo path information %s %:h %:p:h       [help expand]
    echo expand("%")
    echo expand("%:h")
    echo expand("%:p:h")
    echo bufnr('%')
endfunction
command! -nargs=* Path call Path()

function! ListDirsOrFiles(path, ArgLead, ...)
    let dirsonly = ((a:0 > 0) ? 1 : 0)
    let _glob = '' . a:ArgLead . ((a:0 > 0) ? '*/' : '*')
    execute 'lcd' a:path
    if dirsonly ==? 1
        let output = map(sort(globpath('.', _glob, 0, 1), 'i'), 'v:val[2:]')
    elseif dirsonly ==? 0
        let output = map(sort(globpath('.', _glob, 0, 1), 'i'), 'v:val[2:] . (isdirectory(v:val) ? "/" : "")')
    endif
    execute 'lcd -'
    return output
endfunction

function! Cdhere(...)
"  :Cdhere() -- cd to here (this dir, dirname(__file__))    [cd %:p:h]
    let _path = expand('%:p:h') . ((a:0>0) ? ('/' . a:1) : '')
    execute 'cd' _path
    pwd
endfunction
function! Compl_Cdhere(ArgLead, ...)
    return ListDirsOrFiles(expand('%:p:h'), a:ArgLead, g:venv_dirlist_show_files)
endfor
endfunction
command! -nargs=* -complete=customlist,Compl_Cdhere Cdhere call Cdhere(<f-args>)

function! Lcdhere(...)
"  :Lcdhere() -- cd to here (this dir, dirname(__file__))  [lcd %:p:h]
    let _path = expand('%:p:h') . ((a:0>0) ? ('/' . a:1) : '')
    execute 'lcd' _path
    pwd
endfunction
command! -nargs=* -complete=customlist,Compl_Cdhere Lcdhere call Lcdhere(<f-args>)
command! -nargs=* -complete=customlist,Compl_Cdhere LCdhere call Lcdhere(<f-args>)



"  \       -- <leader>
"" <space> -- <leader>
"" map <space> <leader>
"  ,       --  <leader> == <comma>
map ,       <leader>

"  ;;   --  <esc> == double semicolon
imap ;;     <esc>
vmap ;;     <esc>

"  :;   --  <esc> == colon semicolon
imap :;     <esc>:
vmap :;     <esc>:

"Other <esc> sequences
"jk   --  <esc>
"imap jk     <esc>
"vmap jk     <esc>
"98   --  <esc> == 98
"imap 98     <esc>
"vmap 98     <esc>


"  Compatibility
"  These don't work sometimes due to shell and terminal shortcuts:
"    Ctrl-c  -- kill process
"    Ctrl-d  -- send EOL to process (vim: PageDown)
"    Ctrl-z  -- send process to background
"
"  <C-a>    -- Select All (ggVG)
nmap <C-a>  <Esc>ggVG
vmap <C-a>  ggVG
"  <C-c>    -- Copy to system clipboard ("+y) TODO
" vmap <C-c>  "+y


"  Quicklist
"  <leader> q               --  toggle quicklist [:cw/:cwindow]
noremap <silent> <leader>q      <Esc>:cw<CR>
"  <leader> n               --  next quicklist item [:cn/:cnext]
noremap <silent> <leader>n      <Esc>:cn<CR>
"  Location List
"  <leader> l               --  toggle location list [:lw/:lwindow]
noremap <silent> <leader>l      <Esc>:lw<CR>
"  <leader> <shift> N       --  next location list item [:ln/:lnext]
noremap <silent> <leader>n      <Esc>:ln<CR>

set nocompatible
set nomodeline

" Workaround vim lp:#572863
"set ttyscroll=0

filetype off

if exists("g:tinyvim") || !has('keymap')
    source ~/.vim/vimrc.tinyvim.bundles.vimrc
else
    let g:bundlepath='~/.vim/bundle'  " vundle default path
    if !empty($DOTVIM_BUNDLE_NAME)
        let g:bundlepath='~/.vim/bundles.' . $DOTVIM_BUNDLE_NAME
    endif
    let s:vundledir=expand(g:bundlepath . "/Vundle.vim")
    if isdirectory(s:vundledir)
        source ~/.vim/vimrc.full.bundles.vimrc
    else
        let output = '!echo -e "NOTE: Not loading dotvim plugins because'
          \ . s:vundledir . ' was not found.\n'
          \ . 'To install Vundle.vim, run:\n'
          \ . '$ make -C ~/-dotfiles/etc/vim install_vundle\n"'
        silent! execute output
    endif
endif


filetype plugin indent on
syntax on

set noswf               " Do not create swap files
set number              " Show line numbers
set ruler               " Show the cursor position all the time
set showcmd		        " Show (partial) command in status line
set showmatch		    " Show matching brackets
set matchpairs+=<:>     " Match < > brackets too
set hidden              " Hide buffers when they are abandoned
set mouse=a		        " Enable mouse usage (all modes) in terminals

" Code Folding
set nofoldenable
set foldopen=all
set foldmethod=manual
set nofoldenable

" UTF-8
"set encoding=utf-8
"set fileencoding=utf-8
"set fileencodings=utf-8
"set ambiwidth=double
"set nobomb

set nosmartindent
" TODO XXX
set indentkeys-=:,0#

" Code Indenting
set autoindent

" Indent wrapped lines a bit   [breakindent showbreak]
if has("linebreak")
    set breakindent
    " set showbreak=..
    set showbreak=\ "
    "set showbreak=\ \ "
endif
" Wrap in the middle of lines
set nolinebreak


" Searching
set hlsearch
set smartcase		    " Do smart case matching
"set ignorecase   " ic    Do case insensitive matching
"set noignorecase " noic  Do case sensitive matching
"set incsearch		    " Incremental search

set scrolloff=0         " Show cursor+/- n lines (default: 0)

set shiftround          " round </> shifts
set expandtab           " soft tabs

set backspace=2         " indent, eol, start

if exists("+colorcolumn")
   set colorcolumn=79
endif
"  set colorcolumn=0    --  clear color column

" Turn Off Visual Bell
set noerrorbells visualbell t_vb=

" WildMenu
set wildchar=<Tab> wildmenu wildmode=full

" Spell Checking
set spelllang=en_us
"  <leader> sp           --  toggle spellcheck
nmap <silent><leader>sp     :set spell!<CR>

"  shift-<enter>        --  insert new line w/o changing mode
map <S-Enter>               O<ESC>
"map <Enter>               o<ESC>

if has("autocmd")
    " no error bells
    autocmd GUIEnter * set visualbell t_vb=

    " Jump to last position
    au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
        \| exe "normal g'\"" | endif

    " remove trailing whitespace
    "au BufWritePre *.py :%s/\s\+$//e

    " filetype extensions
    augroup filetypedetect
        au BufNewFile,BufRead *.html   set filetype=htmldjango
        "au BufNewFile,BufRead *.html   set filetype=jinja
        au BufNewFile,BufRead *.j2     set filetype=jinja
        au BufNewFile,BufRead *.jinja  set filetype=jinja
        au BufNewFile,BufRead *.jinja2 set filetype=jinja
        au BufNewFile,BufRead *.jsonld set filetype=js
        au BufNewFile,BufRead *.n3     set filetype=n3
        au BufNewFile,BufRead *.rdfa   set filetype=html
        au BufNewFile,BufRead *.rest   set filetype=rst
        au BufNewFile,BufRead *.rst    set filetype=rst
        au BufNewFile,BufRead *.ttl    set filetype=n3
        au BufNewFile,BufRead Vagrantfile set filetype=ruby
    augroup END

    "set previewheight=50
    "au BufEnter ?* call PreviewHeightWorkAround()
    "func! PreviewHeightWorkAround()
    "    if &previewwindow
    "        exec 'setlocal winheight='.&previewheight
    "    endif
    "endfunc

    " Auto completion
    au FileType c set omnifunc=ccomplete#Complete
    au FileType css set omnifunc=csscomplete#CompleteCSS
    au FileType html set omnifunc=htmlcomplete#CompleteTags
    au FileType htmldjango set omnifunc=htmlcomplete#CompleteTags
    au FileType javascript set omnifunc=javascriptcomplete#CompleteJS
    au FileType php set omnifunc=phpcomplete#CompletePHP
    au FileType python set omnifunc=pythoncomplete#Complete
    au FileType xml set omnifunc=xmlcomplete#CompleteTags

    set completeopt=menuone,longest,preview,noinsert
    "  CTRL-<space>     --  autocomplete menu
    inoremap <C-Space>      <C-x><C-o>
    "  CTRL-<tab>       --  autocomplete menu
    inoremap <C-Tab>        <C-X><C-o>

    inoremap <expr> <CR>    pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
    inoremap <expr> <C-n>   pumvisible() ? '<C-n>' : '<C-n><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'

    "Always search for word under cursor
    "au CursorMoved * silent! exe printf('match IncSearch /\<%s\>/', expand('<Cword>'))

    " close vim if the only window left open is a NERDTree
    autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

    " Open NERDTree automatically if no files were specified
    autocmd vimenter * if !argc() && exists("b:NERDTreeType") | NERDTree | endif

    augroup overrideftplugins
        au!
        "au FileType * set cinkeys= indentkeys=
        au FileType yaml.ansible set indentkeys-=*<Return>
    augroup END

endif

" Drag and Drop
"   :help drag-n-drop
"   shift-<drop>    --  cd to file's directory
"   ctrl-<drop>     --  split new window for file
"   <drop>          --  open file or paste path at cursor

" Fonts
"  :Font           -- print the font and size (echo &guifont)

"  g:fontsize=10   -- set the default font size
let g:fontsize="9"
let g:fontsize="10"

let g:fonts = [
\   "Source Code Pro for Powerline",
\   "Roboto Mono",
\   "Monaco",
\   "Fira Mono for Powerline",
\   "DejaVu Sans Mono for Powerline",
\   "Source Code Pro",
\   "DejaVu Sans Mono",
\   "Monospace",
\   ]

"  :PatchFont      -- set the font (s:fontsize, s:fonts, guifont (set gfn=))
"                     tries each font in s:fonts until one is found
function! PatchFont(...)
    ""TODO: read local settings / accept fontsize as param 1
    let s:font = ""
    if a:0 == 0
        echom "&guifont = " . &guifont
        return
    elseif a:0 > 0
        let s:_fontsize = get(a:, 1, g:fontsize)
        if (s:_fontsize != "0")
            let s:fontsize = s:_fontsize
        endif
        if a:0 == 2
            let s:font = get(a:, 2, 0)
        endif
    endif
    if (s:font ==# "")
        let s:fonts = g:fonts
        let s:font=s:fonts[0]
    endif
    let s:fontspace = ' '
    if !has('X11')
        "macvim
        let s:fontspace = ':h'
        let s:fontsize = s:fontsize + 3
    endif
    let g:fontsize = s:fontsize
    let &guifont=s:font . s:fontspace . s:fontsize
endfunction
command! -nargs=* PatchFont call PatchFont(<f-args>)
command! -nargs=* Font call PatchFont(<f-args>)
call PatchFont(g:fontsize)


" Adjust font-size
let s:pattern = '^\(.* \)\([1-9][0-9]*\)$'
let s:minfontsize = 6
let s:maxfontsize = 16
function! AdjustFontSize(amount)
  "if has("gui_gtk2") && has("gui_running")
  if has("gui_running")
    let fontname = substitute(&guifont, s:pattern, '\1', '')
    let cursize = substitute(&guifont, s:pattern, '\2', '')
    let newsize = cursize + a:amount
    if (newsize >= s:minfontsize) || (newsize <= s:maxfontsize)
      let newfont = fontname . newsize
      let &guifont = newfont
      let g:fontsize = newsize
    endif
  else
    echomsg 'err: has("gui_running") is not true.'
  endif
endfunction
command! -nargs=1 AdjustFontSize call AdjustFontSize(<f-args>)

function! LargerFont()
  call AdjustFontSize(1)
endfunction
command! LargerFont call LargerFont()
command! BiggerFont call LargerFont()
command! FontsizeIncrease call LargerFont()

function! SmallerFont()
  call AdjustFontSize(-1)
endfunction
command! SmallerFont call SmallerFont()
command! FontsizeDecrease call SmallerFont()

"  <C-Up>   -- increase font size
nnoremap <C-Up> :LargerFont<CR>

"  <C-Down> -- decrease font size
nnoremap <C-Down> :SmallerFont<CR>


" GUI Menubar
"  :HideMenubar    -- hide GUI menubar
function! HideMenubar()
    set guioptions-=m
endfunction
command! -nargs=* HideMenubar call HideMenubar()


"  :ShowMenubar    -- show GUI menubar
function! ShowMenubar()
    set guioptions+=m
endfunction
command! -nargs=* ShowMenubar call ShowMenubar()

"   :Set256         -- set 256 colors (for console vim)
function! Set256()
    set t_Co=256
endfunction
command! -nargs=* Set256 call Set256()

"   :Set88          -- set 88 colors (for console vim)
function! Set88()
    set t_Co=88
endfunction
command! -nargs=* Set88 call Set88()


" GUI
if has("gui_running")
    call Set256()

    "  Remove gui scrollbars
    set guioptions+=LlRrb
    set guioptions-=LlRrb

    set guioptions-=T       " do not display the gvim toolbar
    set guioptions-=m       " do not display the gvim menubar

    set guioptions+=d       " set GTK dark theme

    set guiheadroom=-50

    set mousemodel=popup

    "  ctrl-z   --  undo [u]
    imap <C-z>      <Esc>:undo<CR>
    nnoremap <C-z>  :undo<CR>

    "  alt-z    --  undo
    imap <a-z>      <Esc>:undo<CR>
    nnoremap <a-z>  :undo<CR>

    "  ctrl-r   --  redo
    imap <C-r>      <Esc>:redo<CR>
    nnoremap <C-r>  :redo<CR>
    "  alt-r    --  redo
    imap <a-r>      <Esc>:redo<CR>
    nnoremap <a-r>  :redo<CR>

    "  ctrl-X   --  cut
    imap <C-X>      <C-O>vgG
    vmap <C-X>      "*x<Esc>i
    "  alt-x    --  cut
    imap <a-x>      <C-O>vgG
    vmap <a-x>      "*x<Esc>i

    "  ctrl-c   --  copy
    "imap <C-c>      <C-O>vgG
    "vmap <C-c>      "*y<Esc>i
    "  alt-c    --  copy
    imap <a-c>      <C-O>vgG
    vmap <a-c>      "*y<Esc>i
else
    "call Set88()
    if $COLORTERM == 'gnome-terminal'
        call Set256()
    else
        " always call Set256.
        " if this causes problems with older terminals
        " :Set88
        call Set256()
    endif
    set mousemodel=popup

    "set background color
    "t_AB=^[[48;5;%dm
    "set foreground color
    "set t_AF=^[[38;5;%dm
endif

"set statusline=%F%m%r%h%w\ [format=%{&ff}]\ [type=%Y]\ [chr=\%03.3b]\ [0x=\%02.2B]\ [\ %04l\ .\ %03v\ ][%p%%]\ [len=%L] [%{strftime(\"%c\",getftime(expand(\"%:p\")))}]
"set statusline=%<%F%h%m%r%h%w%y\[%{&ff}]\ sav:[%{strftime(\"%c\",getftime(expand(\"%:p\")))}]%=\ col:%c%V\ a/x:%b/%02.2B\ pos:%o\ lin:%l\,%L\ %P
"set statusline=%<%F%h%m%r%h%w\ %{strftime(\"%m%d%y\:%H%S\",getftime(expand(\"%:p\")))}%=\ c:%c%V\ %P
set laststatus=2


" autocmd! Syntax * syn match ExtraWhitespace /\s\+$\| \+\ze\t/
"  <leader> sd              --  match EOL whitespace
nnoremap <silent><leader>sd     :match ExtraWhitespace /\s\+$/<CR>

"  <leader> sc              --  clear search highlighting
nnoremap <silent> <leader>sc    :match<CR>

"  ctrl-q       --  close
nnoremap <c-q>      <Esc>:confirm q<CR>

"  <leader> i   --  toggle show invisibles
set listchars=trail:.,tab:>-,eol:$
nmap <leader>i      :set list!<CR>

"  ,cd          --  :cd %:p:h
noremap ,cd         :cd %:p:h<CR>:pwd<CR>

"  T            --  wrap paragram
nnoremap T          gqap

" Keep search matches in the middle of the window.
nnoremap * *zzzv
nnoremap # #zzzv
nnoremap n nzzzv
nnoremap N Nzzzv

"" Cursorline and cursorcolumn
"  <leader> [    --  toggle cursorline and cursorcolumn
nnoremap <leader>[          :set cursorline! cursorcolumn!<CR>
set cursorline cursorcolumn

"  <leader> hm   --  set horizontal line mark
nnoremap <silent><leader>hm ml:execute 'match HorizMark /\%'.line('.').'l/' <CR>
"  <leader> hv   --  set vertical column mark
nnoremap <silent><leader>hv :execute 'match VertMark /\%'.virtcol('.').'v/'<CR>
"  <leader> c    --  clear virt marks
nnoremap <silent><leader>c  :match<CR>



"  Tab          --  Indent Line
" map <Tab>         >gb
"  Shift-Tab    --  Dedent Line
map <S-Tab>         v<gv<ESC>0I<ESC>l
imap <S-Tab>        <ESC>v<gv<ESC>0I

"  ctrl-t       --  Indent Current Line
vnoremap <C-t>      >
"  ctrl-d       --  Dedent Current Line
vnoremap <C-d>      <

"  >            --  Visual Indent Block
vnoremap >          >gv
"  <            --  visual dedent block
vnoremap <          <gv

" Alternative using Tab/Shift-Tab (for gvim).
"  tab          --  shift right
"  Shift-tab    --  shift left
" vnoremap <Tab>    >gv
vnoremap <S-Tab>    <gv

"  ctrl-f       --  find
imap <c-f>          <Esc>:lgrep %:p
vnoremap <c-f>      :lgrep

"  ctrl-alt-A   --  copy all
imap <C-A-a>          <C-O>gg<C-O>gH<C-O>G<Esc>
vmap <C-A-a>          <ESC>gggH<C-O>G<Esc>i

"  ctrl-v       -- paste (*)
"                  conflict: vim blockwise visual selection [CTRL-v]
" map <C-v> <space>"+gP
" imap <C-v> <space><Esc>"+gP
" vmap <C-v> <Esc>"+gP
command! -nargs=0 Paste execute('"+gP')

"  alt-v        -- paste (*)
" nm \\paste\\        "=@*.'xy'<CR>gPFx"_2x:echo<CR>
imap <a-v>          x<Esc>\\paste\\"_s
vmap <a-v>          "-cx<Esc>\\paste\\"_x

" Paste
"  shift-insert --  paste (*)
"                   conflict: mac keyboards do not have <Insert>
map <S-Insert>      <space><Esc>"+gp
imap <S-Insert>     <space><Esc>"+gp
vmap <S-Insert>     <Esc>"+gp

"" Paste
""  shift-ctrl-I --  paste (*)
""                   conflict: mac keyboards do not have <Insert>
"map <S-C-i>      <space><Esc>"+gp
"imap <S-C-i>     <space><Esc>"+gp
"vmap <S-C-i>     <Esc>"+gp

" Save / Close
"  ctrl-S       --  Save
nnoremap <C-s>      <Esc>:w!<CR>
"imap <C-s>         <C-o><C-s><Cr>

"  ctrl-Alt-W   --  Close
nnoremap <C-A-w>    <Esc>:q<CR>

"  ctrl-Home    --  Goto line one
"                   conflict: mac keyboards do not have <Home>
nnoremap <C-Home>   gg1
nnoremap <s-Home>   gg1

"  ctrl-End     --  Goto last line (lines[:-1])
"                   conflict: mac keyboards do not have <Home>
nnoremap <C-End>    G
nnoremap <s-End>    G


" Page Up / Page Down
"  shift-Down    --  PageDown (<C-d>)
"  shift-Up      --  PageUp (<C-u>)
" K    --  PageUp
" nnoremap K  <PageUp>
" J    --  PageDown
" nnoremap J  <PageDown>

" Keyboard PageUp/PageDown are actually 2*<c-U>
"                   conflict: mac keyboards do not have <PageUp, PageDown>
nnoremap <silent> <PageUp> <C-U><C-U>
vnoremap <silent> <PageUp> <C-U><C-U>
inoremap <silent> <PageUp> <C-\><C-O><C-U><C-\><C-O><C-U>
nnoremap <silent> <PageDown> <C-D><C-D>
vnoremap <silent> <PageDown> <C-D><C-D>
inoremap <silent> <PageDown> <C-\><C-O><C-D><C-\><C-O><C-D>

function! Maxmzl()
    set lines=59 columns=120
endfunction
command! -nargs=0 Max call Maxmzl()

function! Minmzl()
    set lines=40 columns=80
endfunction
command! -nargs=0 Min call Minmzl()

" Buffer Nav
"  ctrl-a       --  move to beginning of line (^)
map <C-a>           ^
"  ctrl-e       --  move to end of line ($)
map <C-e>           $

" Window Nav        (window-move-cursor)
"  ctrl-j       --  cursor window down
map <C-j>           <C-w>j
"  ctrl-u       --  cursor window down
map <C-u>           <C-w>j
"  ctrl-k       --  cursor window up
map <C-k>           <C-w>k
"ctrl-i       --  cursor window up (*) conflict: jumplist forward [jumplist]
"map <C-i>           <C-w>k

"  ctrl-l       --  cursor window right
map <C-l>           <C-w>l
"  ctrl-h       --  cursor window left
map <C-h>           <C-w>h

" Window Resize     [window-resize]
"  ctrl-w _     --  maximize window height
"  ctrw-w 1_    --  minimize window height
"  ctrl-w |     --  maximize window width
"  ctrl-w 1|    --  minimize window width
"  ctrl-w =     --  equalize window sizes
"  [n]ctrl-w >  --  expand width
"  [n]ctrl-w <  --  contract width
"  [n]ctrl-w +  --  increase height
"  [n]ctrl-w -  --  reduce height
"  ctrl-w o     --  minimze all other windows

" Window Movement [window-move]
" Window Up
"  <leader> wk  --  move window up
map <leader>wk      <C-W>K
"  ctrl-wi      --  move window up
map <C-w>i          <C-W>K
"  <leader> wi  --  move window up
map <leader>wi      <C-W>K

" Window Right
"  <leader> wl  --  move window right
map <leader>wl      <C-W>L

" Window Down
"  <leader> wj  --  move window down
map <leader>wj      <C-W>J
"  ctrl-wu      --  move window down
map <C-w>u          <C-W>J
"  <leader> wu  --  move window down
map <leader>wu      <C-W>J

" Window Left
"  <leader> wj  --  move window left
map <leader>wj      <C-W>H

" Window Rotate
"  ctrl-w R     --  rotate window up
"  ctrl-w r     --  rotate window down


" Tab Movement [tab-page-commands]
"  ctrl-Alt-h   --  previous tab
map <C-A-h>         :tabprevious<CR>
"  Alt-u        --  previous tab
map <A-u>           :tabprevious<CR>
"  ctrl-Alt-l   --  next tab
map <C-A-l>         :tabnext<CR>
"  Alt-i        --  next tab
map <A-i>           :tabnext<CR>


" Man.vim          --  view manpages in vim
"  :Man man        --  view manpage for 'man'
source $VIMRUNTIME/ftplugin/man.vim


"  <leader> o      --  Open uri under cursor
nnoremap <leader>o      :silent !x-www-browser <C-R>=escape("<C-R><C-F>", "#?&;\|%")<CR><CR>


if executable("ack")
    "  :Ack <term> <path>
    "  <leader>a        --  Ack
    nmap <leader>a      <Esc>:Ack!
endif

" Grin              -- Find in Python
if executable("grin")
    set grepprg=grin\ -snHS\ --emacs\ --follow
    set grepformat=%f:%l:%m
elseif executable("ack")
    set grepprg=ack\ -H\ --nogroup\ --nocolor\ --ignore-dir=tmp\ --ignore-dir=coverage
endif


" Ctags
"  ctrl-[           --  go to tag under cursor
"  ctrl-T           --  go back  #TODO

" sh: ctags -R -f ~/.vim/tags/python-$PYVER.ctags $PYLIBDIR
"set tags+=$HOME/.vim/tags/python-$PYVER.ctags

" Use :make to see syntax errors. (:cn and :cp to move around, :dist to see
" all errors)
"set makeprg=python\ -c\ \"import\ py_compile,sys;\ sys.stderr=sys.stdout;\ py_compile.compile(r'%')\"
"set efm=%C\ %.%#,%A\ \ File\ \"%f\"\\,\ line\ %l%.%#,%Z%[%^\ ]%\\@=%m


" Colors
"  :PatchColors     --  load local colorizing postsets
function! PatchColors()
    "hi Normal                           guibg=#040404       gui=NONE
    "            \       ctermfg=lightgray                   cterm=None
    hi Visual           guifg=NONE      guibg=#540300
                \       ctermfg=black   ctermbg=darkgreen
    hi MatchParen                       guibg=#a42314       gui=bold
                \                       ctermbg=red         cterm=bold

    hi StatusLine	    guifg=gray90    guibg=#101010
                \       ctermfg=lightgray  ctermbg=black

    hi StatusLineNC	    guifg=gray30    guibg=#101010
                \       ctermfg=white   ctermbg=black

    hi VertSplit        guifg=#101010   guibg=#101010
                \       ctermfg=white   ctermbg=black
    hi WildMenu         guifg=NONE      guibg=#540300       gui=bold
                \       ctermfg=red     ctermbg=black

    hi LineNr	        guifg=gray30    guibg=#101010
                \       ctermfg=darkgray

    hi HorizMark                        guibg=#3a5a3a
                \                       ctermbg=darkgreen
    hi VertMark                         guibg=#3a3a3a
                \                       ctermbg=darkgreen

    hi ExtraWhitespace  guifg=#540300   guibg=#540300
                \       ctermfg=red     ctermbg=red

    hi Folded           guifg=gray90     guibg=black
    hi FoldColumn       guifg=gray40    guibg=#101010
    hi ColorColumn                      guibg=black
                \                       ctermbg=black

    hi Cursor           guifg=NONE                          gui=reverse
                \       ctermfg=NONE                        cterm=reverse
    hi CursorColumn                     guibg=gray10
                \                       ctermbg=black
    hi CursorLine                       guibg=gray10
                \                       ctermbg=black

    hi DiffAdd                          guibg=#152d1d
    hi DiffChange                       guibg=#28191b
    hi DiffDelete   guifg=#443737       guibg=#443737
    hi DiffText     guifg=#48191b       guibg=gray

    hi Directory    guifg=#FFA0A0
                \   ctermfg=lightgray

    hi Comment                                              gui=bold
                \                                           cterm=bold

    hi Error        guifg=white         guibg=#a42314       gui=bold
                \   ctermfg=white       ctermbg=darkred     cterm=bold
    hi ErrorMsg     guifg=white         guibg=#a42314
                \   ctermfg=white       ctermbg=darkred     cterm=bold
    hi WarningMsg   guifg=#ccae22       guibg=NONE          gui=bold
                \   ctermfg=yellow      ctermbg=NONE        cterm=bold


    hi ModeMsg      guifg=#eecc18       guibg=NONE          gui=NONE
                \   ctermfg=yellow      ctermbg=NONE        cterm=NONE
    hi Title        guifg=#dd4452       guibg=NONE          gui=bold
                \   ctermfg=red         ctermbg=NONE        cterm=bold
    hi Question     guifg=#66d077       guibg=NONE          gui=NONE
                \   ctermfg=green       ctermbg=NONE        cterm=NONE
    hi MoreMsg      guifg=#39d049       guibg=NONE          gui=NONE
                \   ctermfg=green       ctermbg=NONE        cterm=NONE

    "hi NonText      guifg=#151515       guibg=#151515

    hi TabLine      guifg=white         guibg=black
                \   ctermfg=lightgray   ctermbg=black
    hi TabLineFill                                          gui=reverse
                \   ctermfg=black
    hi TabLineSel   guifg=white         guibg=black
                \   ctermfg=red         ctermbg=black

    hi Todo         guifg=white         guibg=#a42314       gui=bold
                \   ctermfg=red         ctermbg=black       cterm=bold

    hi clear FoldColumn
    hi FoldColumn   guifg=gray40        guibg=#101010       gui=bold
                \   ctermfg=lightgray   ctermbg=black       cterm=bold
    hi clear SignColumn
    hi SignColumn   guifg=#c8bcb9       guibg=#101010       gui=bold
                \   ctermfg=lightgray   ctermbg=black       cterm=bold

    hi Search       guifg=white         guibg=#540300       gui=bold
                \   ctermfg=black       ctermbg=lightgray   cterm=bold


    hi qfFilename   guifg=gray90        guibg=#540300

    hi MyTagListFileName  guifg=#dddddd guibg=#000000
    hi MyTagListTagScope  guifg=#dddddd guibg=#222222

    hi SpellBad           guifg=white         guibg=#a42314       gui=bold
                      \   ctermfg=white       ctermbg=darkred     cterm=bold

    "hi NonText      guifg=#151515       guibg=#151515
    hi clear NonText
    hi NonText      guifg=#ffb964
                  \ ctermfg=10
    "hi bufExplorerMapping   guifg=white
    "hi bufExplorerSplit     guifg=white
    "hi bufExplorerTitle     guifg=white
    "hi bufExplorerToggleSplit   gui


    match ExtraWhitespace /\s\+$/
endfunction
command! -nargs=* PatchColors call PatchColors()

" call PatchColors()    -- call PatchColors when sourced
call PatchColors()

set background=dark
"colorscheme darkblue
"colorscheme candycode
"colorscheme dante
"colorscheme ironman
"colorscheme simpleandfriendly
"colorscheme wombat
"colorscheme camo
"colorscheme jellybeans
"colorscheme darkspectrum
silent! colorscheme desert
silent! colorscheme jellybeans

function! Vim2VimWrite()
    "  Vim2VimWrite()   -- write highlight codes to ./vim_highlight_output.txt
    "    pip install vim2vim   -- https://pypi.python.org/pypi/vim2vim
    redir! > vim_highlight_output.txt
    highlight
    redir END
    echomsg "Vim2VimWrite > vim_highlight_output.txt"
endfunction
command! -nargs=0 Vim2VimWrite call Vim2VimWrite()

" List highlight colors
function! HiTest()
    so $VIMRUNTIME/syntax/hitest.vim
endfunction

" Python
"  Wrap at 72 chars for comments.
set formatoptions=cq textwidth=72 foldignore= wildignore+=*.py[co]

"  read virtualenv's site-packages to vim path
if has('python')
"  Vim and Python
"  !python -c "__import__('pprint').pprint(sorted(locals().items()))"
"  :python    __import__('pprint').pprint(sorted(vim.__dict__.items()))
"  :py        __import__('pprint').pprint(sorted(vim.__dict__.items()))
"
"py << EOF
"# read virtualenv's site-packages to vim path
"import os.path
"import sys
"import vim
"def extend_vim_path_from_VIRTUAL_ENV(env=os.environ):
"    if 'VIRTUAL_ENV' in env:
"        project_base_dir = env['VIRTUAL_ENV']
"        sys.path.insert(0, project_base_dir)
"        activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
"        execfile(activate_this, dict(__file__=activate_this))
"    for p in sys.path:
"        if os.path.isdir(p):
"            vim.command(r"set path+=%s" % (p.replace(" ", r"\ ")))
"            # TODO: merge paths
"EOF

function! RegexLines(...)
    " TODO: python regex current buffer
python << EOF
from __future__ import print_function
import re
import sys

def regex_lines(regex=".*", lines=[], file=None):
    def regex_line_match(pattern, lines):
        rgx = re.compile(r''+pattern)
        for n, line in enumerate(lines, 1):
            match=rgx.match(line)
            if match:
                yield (n, match)

    for n, line in regex_line_match(regex, lines):
        print("%d: %s" % (n, line), file=file)

regex_lines(regex=vim.eval("a:0"),
        lines=vim.current.buffer,
        file=sys.stdout)
EOF
endfunction
command! -nargs=1 -range=% RegexLines call RegexLines(<f-args>)

python << EOF
#from __future__ import print_function
from collections import OrderedDict
import functools
import sys
import vim
try:
    from pyline.pyline import main as pyline_main
except ImportError:
    try:
        from pyline import main as pyline_main
    except ImportError:
        #print("pyline not found", file=sys.stderr)
        #print("pyline not found", file=sys.stdout)
        pass
try:
    from io import StringIO
except ImportError:
    from StringIO import StringIO
def PylineVim(*args):
    cfg = OrderedDict()
    cfg['args'] = args
    output = cfg['output'] = StringIO()
    ctx = OrderedDict()
    ctx['cfg'] = cfg
    buf = ctx['buffer'] = vim.current.buffer
    if vim.current.range:
        cr = ctx['cr'] = vim.current.range
        cfg['iterator'] = list(buf[cr.start:cr.end+1])
        print(ctx)
        import inspect
        print(inspect.getsource(pyline_main))
        _, results = pyline_main(**cfg)
        ctx['lines'] = output.readlines()
        ctx['results'] = results
        cfg['iterator'] = list(buf[cr.start:cr.end+1])
        ctx['lines'] = output.readlines()
        print(ctx)
        buf[cr.start:cr.end] = ctx['lines']
    else:
        cfg['iterator'] = list(buf)
        pyline_main(**cfg)
        ctx['lines'] = output.readlines()
        buf[:] = ctx['lines']
    raise Exception([('ctx', ctx),])
    print(('ctx', ctx))
EOF
" function! Pyline(...) range
    "  :Pyline -- python regex current buffer
" endfunction
command! -nargs=* -range Pyline python PylineVim(<f-args>)


endif " has("python")

"  # Pyline, !pyline
"    - these read from stdin if nothing is selected:
"      Press Ctrl-D to send EOF (twice?)
"  !python -c "from __future__ import print_function; import sys; [print((i,l)) for (i,l) in enumerate(sys.stdin.readlines())]"
"  !pyline 'str((i, l))'
"  Pyline str((i,l))

" Tabsetting functions

"  :Fourtabs    -- set to four (4) soft tabs (Default)
function! Fourtabs()
	set expandtab
    set tabstop=4           " 4-space hard tabs
    set softtabstop=4       " 4-space soft tabs
    set shiftwidth=4        " 4-space indent
endfunction
command! -nargs=* Fourtabs call Fourtabs()
" Default to fourtabs
Fourtabs

"  :Threetabs   -- set to three (3) soft tabs
function! Threetabs()
	set expandtab
    set tabstop=3
    set softtabstop=3
    set shiftwidth=3
endfunction
command! -nargs=* Threetabs call Threetabs()

"  :Twotabs     -- set to two (2) soft tabs
function! Twotabs()
	set expandtab
    set tabstop=2
    set softtabstop=2
    set shiftwidth=2
endfunction
command! -nargs=* Twotabs call Twotabs()

"  :Onetab      -- set to one (1) soft tab
function! Onetab()
	set expandtab
    set tabstop=1
    set softtabstop=1
    set shiftwidth=1
endfunction
command! -nargs=* Onetab call Onetab()

"  :new         -- create a new horizontal split
"  :vnew        -- create a new vertical split
"  :Tabnew      -- call :tabnew
"  :New         -- call :tabnew
"  :Tn          -- call :tabnew
command! -nargs=* Tabnew :tabnew
command! -nargs=* Tn :tabnew
command! -nargs=* New :tabnew

"  :Hardtabs    -- set to hard \t tabs (e.g. for Makefiles)
function! Hardtabs()
    set noexpandtab
    set tabstop=4
    set softtabstop=4
    set shiftwidth=4
endfunction
command! -nargs=* Hardtabs call Hardtabs()

"  :CurrentBuffer -- display number of current buffer
function! CurrentBuffer()
    :echo bufnr('%')
endfunction
command! -nargs=* CurrentBuffer call CurrentBuffer()

"  diff           -- vimdiff, Hgvdiff, Gdiff
"    :diffget   -- get from diff (overwrite or append)
"    do         -- :diffget other block
"    :diffput   -- put from diff (overwrite or append)
"    dp         -- :diffput block 
"
"    <C-W><C-w> -- cycle between buffers
"
"  diffget maps   -- 3-way merge buffers
"    <leader> 2   -- diffget from bufnr 2
map <silent> <leader>2 :diffget 2<CR> :diffupdate<CR>
"    <leader> 3   -- diffget from bufnr 3
map <silent> <leader>3 :diffget 3<CR> :diffupdate<CR>
"    <leader> 4   -- diffget from bufnr 4
map <silent> <leader>4 :diffget 4<CR> :diffupdate<CR>


"  :Striptrailingwhitespace -- strip spaces at the end of lines
function! Striptrailingwhitespace()
    :%s/\s\+$//e
endfunction
command! -nargs=* Striptrailing call Striptrailingwhitespace()


"  <F3>     -- insert ReST date heading
nnoremap <F3> "=strftime("\n%Y-%m-%d (%A)\n-------------------------\n")<CR>P
inoremap <F3> <C-R>=strftime("\n%Y-%m-%d (%A)\n-----------------------\n")<CR>

" Trac
let g:tracServerList = {}
let g:tracBrowser = 'x-www-browser'

function! SphinxifyHeading()
   s/\(.*\)/.. index:: \1.. _\L\1:\E\1/
endfunction
command! -nargs=* SphinxifyHeading call SphinxifyHeading()

let g:termprg = 'gnome-terminal -q --'
function! Terminal()
    let l:termprg = get(s:, 'termprg', g:termprg) 
    if $VIRTUAL_ENV
        if $__VENV
            exec 'silent !' . l:termprg .' "$__VENV -e -xb" &'
        else
            exec 'silent !' . l:termprg . ' "source $VIRTUAL_ENV/bin/activate; $SHELL" &'
        endif
    else
        exec 'silent !' . l:termprg . ' "$SHELL" &'
    endif
    redraw!
endfunction
command! -nargs=0 Terminal call Terminal()
command! -nargs=0 Term call Terminal()

call PatchColors()

" ##
" ## source vimrc.local.99-after.vimrc
call Source_dotvim("vimrc.local.99-after.vimrc")
" ##

" References
"
"   - https://dev.launchpad.net/UltimateVimPythonSetup
"   - https://github.com/kennethreitz/dotfiles/blob/master/.vimrc
"   - https://bitbucket.org/sjl/dotfiles/src/tip/vim/.vimrc#cl-716
"   - http://vim.wikia.com/wiki/Highlight_unwanted_spaces
"   - http://stackoverflow.com/questions/1551231
"   - http://superuser.com/questions/117969/is-there-a-way-to-move-a-split-page-to-a-new-tab-in-vim
"   - http://sontek.net/turning-vim-into-a-modern-python-ide
"   - http://vim.wikia.com/wiki/VimTip320

