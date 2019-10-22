

set nocompatible              " be iMproved, required
filetype off                  " required

""set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
""alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

"let Vundle manage Vundle, required
" Bundle            -- Vim bundle manager [help bundle]
Bundle 'https://github.com/gmarik/Vundle.vim'
" :BundleList          - list configured plugins
" :BundleInstall(!)    - install (update) plugins
" :BundleSearch(!) foo - search (or refresh cache first) for foo
" :BundleClean(!)      - confirm (or auto-approve) removal of unused plugins
"

""  " The following are examples of different formats supported.
""  " Keep Bundle commands between vundle#begin/end.
""  " plugin on GitHub repo
""  Bundle 'tpope/vim-fugitive'
""  " plugin from http://vim-scripts.org/vim/scripts.html
""  Bundle 'L9'
""  " Git plugin not hosted on GitHub
""  Bundle 'git://git.wincent.com/command-t.git'
""  " git repos on your local machine (i.e. when working on your own plugin)
""  Bundle 'file:///home/gmarik/path/to/plugin'
""  " The sparkup vim script is in a subdirectory of this repo called vim.
""  " Pass the path to set the runtimepath properly.
""  Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
""  " Avoid a name conflict with L9
""  Bundle 'user/L9', {'name': 'newL9'}

" The Bundle URLs are intentionally complete https URLs
" * grep '^Bundle \'' vimrc.bundles
" * sed -i 's\https://github.com/\ssh://git@github.com/\g'


" Info.vim          -- vim infopages in vim [help info]
Bundle 'https://github.com/vim-scripts/info.vim'
"  :Info sed        --  view infopage for 'sed'
"  <Space>          --  Scroll forward (page down).
"  <Backspace>      --  Scroll backward (page up).
"  <Tab>            --  Move cursor to next hyperlink within this node.
"  <Enter>,<C-]>    --  Follow hyperlink under cursor.
"  ;,<C-T>          --  Return to last seen node.
"  .,>              --  Move to the "next" node of this node.
"  p,<              --  Move to the "previous" node of this node.
"  u                --  Move "up" from this node.
"  d                --  Move to "directory" node.
"  t                --  Move to the Top node.
"  <C-S>            --  Search forward within current node only.
"  s                --  Search forward through all nodes for a specified
"  string.
"  q                --  Quit browser.
"


" Signify   -- show git/hg file changes in gutter [help signify]
Bundle 'https://github.com/mhinz/vim-signify'


" NERDTree      -- File browser [help NERDTree]
Bundle 'https://github.com/scrooloose/nerdtree'
"  <Leader>e         --  toggle NERDTree
"  ctrl-e            --  toggle NERDTree
"  <Leader>E         --  open nerdtree to current file (:NERDTreeFind %:p:h)
"  ctrl-E            --  open nerdtree to current file (:NERDTreeFind %:p:h)
"  I                 --  toggle view hidden files
"  B                 --  toggle view bookmarks
"  cd                --  set vim CWD to selected dir
"  C                 --  refocus view to selected dir
"  o                 --  open
"  r                 --  refresh dir
"  R                 --  refresh root
"  t                 --  open in new tab
"  T                 --  open in new tab silently
"  u                 --  up a dir
"  U                 --  up a dir and leave open
"  x                 --  close node
"  X                 --  close all nodes recursive
"  ?                 --  toggle help
"let g:NERDTreeBookmarksFile = "~/workspace/.bookmarks"

"Single click
let NERDTreeMouseMode=1
"Netrw in NERDTree
let NERDTreeHijackNetrw=1

map <silent> <C-e> <Esc>:NERDTreeToggle<CR>
nnoremap <silent> <Leader>e <Esc>:NERDTreeToggle<CR>
"map <silent> <C-t> <Esc>:tabnew +:NERDTreeMirror<CR>
"nnoremap <C-B> <Esc>:Bookmark "

let g:nerdtree_plugin_open_cmd = "xdg-open"


" FindInNERDTree   -- NERDTRee show current file [help NERDTreeFind]
Bundle 'https://github.com/dmcinnes/FindInNERDTree'
nnoremap <Leader>E <Esc>:NERDTreeFind "%:p:h"<CR>


"" BufExlorer       -- buffer management window  [help bufexplorer]
Bundle 'https://github.com/jlanzarotta/bufexplorer'
"  <c-b>            --  toggle BufExplorer
"  ?                --  toggle BufExplorer help
map <C-B>               <Esc>:BufExplorer<CR>
"  <leader>b        --  toggle BufExplorer
nnoremap <Leader>b      <Esc>:BufExplorer<CR>
set switchbuf=usetab


" CtrlP             -- file/buffer/mru finder [help ctrlp]
Bundle 'https://github.com/kien/ctrlp.vim'
"  <C-p>            -- CtrlP (fuzzy matching)
nnoremap <Leader>p <Esc>:CtrlP<CR>


" Syntastic         -- syntax highlighting [help syntastic]
Bundle 'https://github.com/scrooloose/syntastic'
if exists("g:loaded_syntastic_plugin")
    let g:syntastic_enable_signs=1
    let g:syntastic_auto_loc_list=1
    let g:syntastic_quiet_warnings=0
    let g:syntastic_stl_format = '[%E{Err: %fe #%e}%B{, }%W{Warn: %fw #%w}]'
    "let g:syntastic_disabled_filetypes = ['ruby', 'php']
    set statusline+=%#warningmsg#
    set statusline+=%{SyntasticStatuslineFlag()}
    set statusline+=%*
endif


" EasyMotion    -- easy visual motions [help easymotion]
Bundle 'https://github.com/Lokaltog/vim-easymotion'
"  <Leader>m-w/e    --  search forward (beg/end of word)
"  <Leader>m-b      --  search backward
"  <Leader>m-j      --  search line down
"  <Leader>m-k      --  search line up
let g:EasyMotion_leader_key = '<Leader>m'
"let g:EasyMotion_mapping_t  = '_t'
"let g:EasyMotion_mapping_gE = '_gE'


" Jellybeans    -- a good colorscheme w/ sensible diff highlighting
Bundle 'https://github.com/nanotech/jellybeans.vim'
"  :colorscheme jellybeans -- switch to the jellybeans colorscheme


" Vim-misc      -- functions for colorscheme-switcher and vim-session
Bundle 'https://github.com/xolox/vim-misc'


" Vim Colorscheme Switcher [help colorscheme-switcher]
Bundle 'https://github.com/xolox/vim-colorscheme-switcher'
let g:colorscheme_switcher_exclude = ['shine','morning','peachpuff', 'zellner', 'delek', 'default' ]
let g:colorscheme_switcher_keep_background = 1
"  <F8>         -- cycle colors forward
"  <Shift><F8>  -- cycle colors reverse


" vim-nginx -- nginx ftdetect, indent, and syntax
Bundle 'https://github.com/robotvert/vim-nginx'


" n3.vim    -- N3/Turtle RDF Syntax
Bundle 'https://github.com/vim-scripts/n3.vim'


" SPARQL    -- SPARQL syntax
Bundle 'https://github.com/vim-scripts/sparql.vim'

" Pyrex         -- Pyrex syntax
Bundle 'https://github.com/vim-scripts/pyrex.vim'


" Jinja         -- Jinja Templates syntax
Bundle 'https://github.com/mitsuhiko/vim-jinja'


" Salt      -- Salt syntax
Bundle 'https://github.com/saltstack/salt-vim'


" ViM Airline   -- helpful statusbar information w/ vimscript [help airline]
Bundle 'https://github.com/vim-airline/vim-airline'
Bundle 'https://github.com/vim-airline/vim-airline-themes'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#virtualenv#enabled = 1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#branch#empty_message = ''
let g:airline#extensions#syntastic#enabled = 1
let g:airline#extensions#tagline#enabled = 1
let g:airline#extensions#tagline#buffer_nr_show = 1
if has("gui_running")
    let g:airline_powerline_fonts = 1
    " base16, wombat, luna
    "let g:airline_theme="base16"
else
    " base16, wombat, luna
    "let g:airline_theme="wombat"
endif
"   :AirlineTheme [dark,luna,base16_grayscale,serene]
" let g:airline_theme='dark'  " vim-airline
" let g:airline_theme='luna'              " vim-airline-themes
let g:airline_theme='base16_grayscale'  " vim-airline-themes
" let g:airline_theme='serene'              " vim-airline-themes

" All of your Bundles must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
""To ignore plugin indent changes, instead use:
"filetype plugin on
"
""see :h vundle for more details or wiki for FAQ
""Put your non-Bundle stuff after this line

" call PatchColors()  " TODO: from ./vimrc.full.bundles.vimrc'
