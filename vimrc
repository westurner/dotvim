" .vimrc
"
""respect to
""- https://dev.launchpad.net/UltimateVimPythonSetup
""- https://github.com/kennethreitz/dotfiles/blob/master/.vimrc
""- https://bitbucket.org/sjl/dotfiles/src/tip/vim/.vimrc#cl-716
""- http://vim.wikia.com/wiki/Highlight_unwanted_spaces
""- http://stackoverflow.com/questions/1551231
""- http://superuser.com/questions/117969/is-there-a-way-to-move-a-split-page-to-a-new-tab-in-vim
""- http://sontek.net/turning-vim-into-a-modern-python-ide
""- http://vim.wikia.com/wiki/VimTip320

" Vim Reference
" ---------------
"  %          --  current filename
"  %:p        --  current filepath
"  $VIMRUNTIME      --  /{colors,syntax,macros}
"  ListMappings     --  list commented mappings
"  :map             --  list actual mappings
"  :scriptnames     --  list scripts and plugins
"  :set             --  list all nondefault options
"  e <path>         --  open file
"  e <pa...><tab>   --  open file with wildmenu completion
"  \e [...] <enter> --  open file
"  :tabnew <path>   --  open file
"  :read filename|  --  insert filename at cursor
"  :read !cmd       --  insert cmd output at cursor
"  :%! [cmd]        --  buffer > stdin > [cmd] > stdout => buffer.replace
"
"  [n]G             --  goto line #
"  g <C-g>          --  whereami
"  u                --  undo
"  ^r               --  redo
"  :%s:\(.*\):+\1:g --  Regex
"
" Modes
"  i                --  insert
"  I                --  insert at beginning of line
"  a                --  append
"  A                --  append at end of line
"  v                --  visual
"  c-v              --  visual block
"  ;;               --  command
"  <Esc>            --  command
"
" Vim Marks
"  m[a-z]{1}        --  set mark
"  `[a-z]{1}        --  goto mark
"  '[a-z]{1}        --  goto mark
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
"  zR               --  open all folds
"
" Etiquette
"  <leader> i       --  toggle unprintables
"  <leader> sd      --  toggle highlight EOL whitespace
"  <leader> sc      --  clear highlighting
"

" set window title to vim title (display full path)
set title

"  :ListMappings    --  list .vimrc mapping comments
function! ListMappings()
    lvimgrep '\s*"\s\{2,}' ~/.vimrc ~/.dotfiles/etc/vim/vimrc.bundles
    lopen
endfunction
command! -nargs=0 ListMappings call ListMappings()

"  <space> -- <leader>
map <space> <leader>
"  ,    --  <leader> == <comma>
map ,       <leader>


"  ;;   --  <esc> == double semicolon
imap ;;     <esc>
vmap ;;     <esc>
"  98   --  <esc> == 98
imap 98     <esc>
vmap 98     <esc>
"  :;   --  <esc> == colon semicolon
imap :;     <esc>:
"  :;   --  <esc> == colon semicolon
vmap :;     <esc>:

" Quickfix
"  <leader> q               --  toggle quicklist
noremap <silent> <leader>q      <Esc>:cw<CR>
"  <leader> n               --  next quicklist item
noremap <silent> <leader>n      <Esc>:cn<CR>
"  <leader> l               --  toggle location list
noremap <silent> <leader>l      <Esc>:lw<CR>

set nocompatible
set nomodeline

" Workaround vim lp:#572863
"set ttyscroll=0

filetype off

if exists("g:tinyvim") || !has('keymap')
    source ~/.vim/vimrc.tinyvim.bundles.vimrc
else
    source ~/.vim/vimrc.full.bundles.vimrc
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

" Searching
set hlsearch
set smartcase		    " Do smart case matching
"set ignorecase		    " Do case insensitive matching
"set incsearch		    " Incremental search

set scrolloff=4         " Show cursor+/- n lines

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
        au BufNewFile,BufRead *.n3  setfiletype n3
        au BufNewFile,BufRead *.ttl  setfiletype n3
        au BufNewFile,BufRead *.jinja2 set filetype=jinja
        au BufNewFile,BufRead *.jinja set filetype=jinja
        au BufNewFile,BufRead *.html set filetype=htmldjango
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
    au FileType python set omnifunc=pythoncomplete#Complete
    au FileType htmldjango set omnifunc=htmlcomplete#CompleteTags
    au FileType javascript set omnifunc=javascriptcomplete#CompleteJS
    au FileType html set omnifunc=htmlcomplete#CompleteTags
    au FileType css set omnifunc=csscomplete#CompleteCSS
    au FileType xml set omnifunc=xmlcomplete#CompleteTags
    au FileType php set omnifunc=phpcomplete#CompletePHP
    au FileType c set omnifunc=ccomplete#Complete

    set completeopt=menuone,longest,preview
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
endif

" Drag and Drop
"   :help drag-n-drop
"   shift-<drop>    --  cd to file's directory
"   ctrl-<drop>     --  split new window for file
"   <drop>          --  open file or paste path at cursor

" Fonts
"  :PatchFont      -- set the font
function! PatchFont()
    let s:fontsize="11"
    let s:fonts = [
                \   "DejaVu Sans Mono for Powerline",
                \   "Monaco",
                \   "DejaVu Sans Mono",
                \   "Monospace",
                \   ]
    let s:fontspace = ' '
    if !has('X11')
        "macvim
        let s:fontspace = ':h'
        let s:fontsize = s:fontsize + 3
    endif
    let &guifont=s:fonts[0] . s:fontspace . s:fontsize
endfunction
command! -nargs=* PatchFont call PatchFont()
call PatchFont()


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

    set guiheadroom=-50

    set mousemodel=popup

    "  ctrl-z   --  undo
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
    imap <C-c>      <C-O>vgG
    vmap <C-c>      "*y<Esc>i
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

"<ctrl-V> -- paste
"map <C-v> "+gP
"imap <C-v> <Esc>"+gP
"vmap <C-v> <Esc>"+gP
nm \\paste\\        "=@*.'xy'<CR>gPFx"_2x:echo<CR>
imap <a-v>          x<Esc>\\paste\\"_s
vmap <a-v>          "-cx<Esc>\\paste\\"_x

" Paste
"  shift-insert --  paste
map <S-Insert>      <Esc>"+gp
imap <S-Insert>     <Esc>"+gp
vmap <S-Insert>     <Esc>"+gp

"  ctrl-S       --  Save
nnoremap <C-s>      <Esc>:w!<CR>
"imap <C-s>         <C-o><C-s><Cr>

"  ctrl-Alt-W   --  Close
nnoremap <C-A-w>    <Esc>:q<CR>

"  ctrl-Home    --  Goto line one
nnoremap <C-Home>   gg1
nnoremap <s-Home>   gg1

"  ctrl-End     --  Goto line :-1
nnoremap <C-End>    G
nnoremap <s-End>    G


" PgUp/PgDn
"  K    --  PageUp
nnoremap K  <PageUp>
"  J    --  PageDown
nnoremap J  <PageDown>

" Pgup/Down are actually 2*<c-U>
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
"  ctrl-i       --  cursor window up
map <C-i>           <C-w>k

"  ctrl-l       --  cursor window right
map <C-l>           <C-w>l
"  ctrl-h       --  cursor window left
map <C-h>           <C-w>h

" Window Resize     (window-resize)
"  ctrl-w _     --  maximize window height
"  ctrw-w 1_    --  minimize window height
"  ctrl-w |     --  maximize window width
"  ctrl-w 1|    --  minimize window width
"  ctrl-w =     --  equalize window sizes
"  [n]ctrl-w >  --  expand width
"  [n]ctrl-w <  --  contract width
"  [n]ctrl-w +  --  increase height
"  [n]ctrl-w -  --  reduce height

" Window Movement (window-move)
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


" Tab Movement (tab-page-commands)
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
nnoremap <leader>o      :silent !xdg-open <C-R>=escape("<C-R><C-F>", "#?&;\|%")<CR><CR>


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
    hi Normal                           guibg=#040404       gui=NONE
                \       ctermfg=lightgray                   cterm=None
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

    hi LineNr	        guifg=gray50    guibg=#080808
                \       ctermfg=darkgray

    hi HorizMark                        guibg=#2a4a2a
                \                       ctermbg=darkgreen
    hi VertMark                         guibg=#2a2a2a
                \                       ctermbg=darkgreen

    hi ExtraWhitespace  guifg=#540300   guibg=#540300
                \       ctermfg=red     ctermbg=red

    hi Folded           guifg=gray90     guibg=black
    hi FoldColumn       guifg=gray10    guibg=#222222
    hi ColorColumn                      guibg=gray20
                \                       ctermbg=darkgray

    hi Cursor           guifg=NONE                          gui=reverse
                \       ctermfg=NONE                        cterm=reverse
    hi CursorColumn                     guibg=gray20
                \                       ctermbg=darkgray
    hi CursorLine                       guibg=gray20
                \                       ctermbg=black

    hi DiffAdd                          guibg=#454d4d
    hi DiffChange                       guibg=#38492b
    hi DiffDelete   guifg=#443737       guibg=#443737
    hi DiffText                         guibg=#4c5f48

    hi Directory    guifg=#FFA0A0
                \   ctermfg=lightgray

    hi Comment                                              gui=bold
                \                                           cterm=bold

    hi Error        guifg=white         guibg=#a42314       gui=bold
                \   ctermfg=white       ctermbg=red         cterm=bold
    hi ErrorMsg     guifg=white         guibg=#a42314
                \   ctermfg=white       ctermbg=red         cterm=bold

    hi ModeMsg      guifg=#eecc18       guibg=NONE          gui=NONE
                \   ctermfg=yellow      ctermbg=NONE        cterm=NONE
    hi Title        guifg=#dd4452       guibg=NONE          gui=bold
                \   ctermfg=red         ctermbg=NONE        cterm=bold
    hi Question     guifg=#66d077       guibg=NONE          gui=NONE
                \   ctermfg=green       ctermbg=NONE        cterm=NONE
    hi MoreMsg      guifg=#39d049       guibg=NONE          gui=NONE
                \   ctermfg=green       ctermbg=NONE        cterm=NONE

    hi ErrorMsg     guifg=#ffffff       guibg=#ff0000       gui=bold
                \   ctermfg=white       ctermbg=red         cterm=bold
    hi WarningMsg   guifg=#ccae22       guibg=NONE          gui=bold
                \   ctermfg=yellow      ctermbg=NONE        cterm=bold

    hi NonText      guifg=#151515       guibg=#151515

    hi TabLine      guifg=white         guibg=black
                \   ctermfg=lightgray   ctermbg=black
    hi TabLineFill                                          gui=reverse
                \   ctermfg=black
    hi TabLineSel   guifg=white         guibg=black
                \   ctermfg=red         ctermbg=black

    hi Todo         guifg=white         guibg=#a42314       gui=bold
                \   ctermfg=red         ctermbg=black       cterm=bold

    hi clear FoldColumn
    hi FoldColumn   guifg=#c8bcb9       guibg=#171717       gui=bold
                \   ctermfg=lightgray   ctermbg=black       cterm=bold
    hi clear SignColumn
    hi SignColumn   guifg=#c8bcb9       guibg=#171717       gui=bold
                \   ctermfg=lightgray   ctermbg=black       cterm=bold

    hi Search       guifg=white         guibg=#742314       gui=bold
                \   ctermfg=black       ctermbg=lightgray   cterm=bold


    hi qfFilename   guifg=gray90        guibg=#540300

    hi MyTagListFileName  guifg=#dddddd guibg=#000000
    hi MyTagListTagScope  guifg=#dddddd guibg=#222222

    match ExtraWhitespace /\s\+$/
endfunction
command! -nargs=* PatchColors call PatchColors()
""call PatchColors()

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
"colorscheme desert
colorscheme jellybeans


" List highlight colors
function! HiTest()
    so $VIMRUNTIME/syntax/hitest.vim
endfunction

" Python
"  Wrap at 72 chars for comments.
set formatoptions=cq textwidth=72 foldignore= wildignore+=*.py[co]

"  read virtualenv's site-packages to vim path
if has('py')
py << EOF
# read virtualenv's site-packages to vim path
import os.path
import sys
import vim
if 'VIRTUAL_ENV' in os.environ:
    project_base_dir = os.environ['VIRTUAL_ENV']
    sys.path.insert(0, project_base_dir)
    activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
    execfile(activate_this, dict(__file__=activate_this))
for p in sys.path:
    if os.path.isdir(p):
        vim.command(r"set path+=%s" % (p.replace(" ", r"\ ")))
EOF

function! RegexLines(...)
py << EOF
" TODO: python regex current buffer
" :help if_pyth
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
command! -nargs=1 RegexLines call RegexLines()

endif "has("py")


" Tabsetting functions

"  :Fourtabs    -- set to four (4) soft tabs (Default)
function! Fourtabs()
    set tabstop=4           " 4-space hard tabs
    set softtabstop=4       " 4-space soft tabs
    set shiftwidth=4        " 4-space indent
endfunction
command! -nargs=* Fourtabs call Fourtabs()
" Default to fourtabs
Fourtabs

"  :Threetabs   -- set to three (3) soft tabs (e.g. RST)
function! Threetabs()
    set tabstop=3
    set softtabstop=3
    set shiftwidth=3
endfunction
command! -nargs=* Threetabs call Threetabs()

"  :Twotabs     -- set to two (2) soft tabs
function! Twotabs()
    set tabstop=2
    set softtabstop=2
    set shiftwidth=2
endfunction
command! -nargs=* Twotabs call Twotabs()

"  :CurrentBuffer -- display number of current buffer
function! CurrentBuffer()
    :echo bufnr('%')
endfunction
command! -nargs=* CurrentBuffer call CurrentBuffer()

"  <leader> 2   -- diffget from bufnr 2
map <silent> <leader>2 :diffget 2<CR> :diffupdate<CR>
"  <leader> 3   -- diffget from bufnr 3
map <silent> <leader>3 :diffget 3<CR> :diffupdate<CR>
"  <leader> 4   -- diffget from bufnr 4
map <silent> <leader>4 :diffget 4<CR> :diffupdate<CR>

"  <leader> 2   -- diffget from bufnr 2
map <silent> <leader>2 :diffget 2<CR> :diffupdate<CR>
"  <leader> 3   -- diffget from bufnr 3
map <silent> <leader>3 :diffget 3<CR> :diffupdate<CR>
"  <leader> 4   -- diffget from bufnr 4
map <silent> <leader>4 :diffget 4<CR> :diffupdate<CR>

"  :Striptrailingwhitespace -- strip spaces at the end of lines
function! Striptrailingwhitespace()
    :%s/\s\+$//e
endfunction
command! -nargs=* Striptrailing call Striptrailingwhitespace()


" Adjust font-size
let s:pattern = '^\(.* \)\([1-9][0-9]*\)$'
let s:minfontsize = 6
let s:maxfontsize = 16
function! AdjustFontSize(amount)
  if has("gui_gtk2") && has("gui_running")
    let fontname = substitute(&guifont, s:pattern, '\1', '')
    let cursize = substitute(&guifont, s:pattern, '\2', '')
    let newsize = cursize + a:amount
    if (newsize >= s:minfontsize) && (newsize <= s:maxfontsize)
      let newfont = fontname . newsize
      let &guifont = newfont
    endif
  else
    echoerr "You need to run the GTK2 version of Vim to use this function."
  endif
endfunction

function! LargerFont()
  call AdjustFontSize(1)
endfunction
command! LargerFont call LargerFont()

function! SmallerFont()
  call AdjustFontSize(-1)
endfunction
command! SmallerFont call SmallerFont()

"  <C-Up>   -- increase font size
nnoremap <C-Up> :LargerFont<CR>

"  <C-Down> -- decrease font size
nnoremap <C-Down> :SmallerFont<CR>

"  <F3>     -- insert ReST date heading
nnoremap <F3> "=strftime("\n%Y-%m-%d (%A)\n-------------------------\n")<CR>P
inoremap <F3> <C-R>=strftime("\n%Y-%m-%d (%A)\n-----------------------\n")<CR>

" Trac
let g:tracServerList = {}
let g:tracBrowser = 'x-www-browser'
