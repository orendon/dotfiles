let mapleader = " "

" Clear autocmds
autocmd!

" Use Vim settings, rather than Vi settings
" This must be first because it changes other options as a side effect
set nocompatible

" Don't show mode
" set noshowmode

set nonumber

" Enable file type detection and load plugin indent files
filetype plugin on
filetype indent on

" enable per-project .vimrc files
set exrc
" Only execute safe per-project vimrc commands
" set secure

" Show me whitespace
" au FileType * if &filetype =~ /scss\|css\|ruby/ | setlocal list | endif

" automatically reload vimrc when it's saved
au BufWritePost .vimrc so $MYVIMRC

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle/
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/vundle'

Plugin 'dockyard/vim-easydir'
Plugin 'ecomba/vim-ruby-refactoring'
Plugin 'SirVer/ultisnips'
Plugin 'int3/vim-extradite'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'kchmck/vim-coffee-script'
Plugin 'pangloss/vim-javascript'
Plugin 'rorymckinley/vim-rubyhash'
Plugin 'tmhedberg/matchit'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-haml'
Plugin 'tpope/vim-ragtag'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-rake'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-vinegar'
Plugin 'tpope/vim-unimpaired'
Plugin 'tpope/vim-speeddating'
Plugin 'tpope/vim-rsi'
Plugin 'tpope/vim-projectionist'
Plugin 'stefanoverna/vim-i18n'
Plugin 'szw/vim-tags'
Plugin 'vim-ruby/vim-ruby'
Plugin 'danchoi/ri.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'd11wtq/ctrlp_bdelete.vim'
Plugin 'tacahiroy/ctrlp-funky'
Plugin 'mileszs/ack.vim'
Plugin 'junegunn/vim-easy-align'
Plugin 'chriskempson/vim-tomorrow-theme'
Plugin 'christoomey/vim-tmux-runner'
Plugin 'gabebw/vim-spec-runner'
Plugin 'marcweber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'wellle/targets.vim'
Plugin 'vim-scripts/SyntaxAttr.vim'
Plugin 'guns/xterm-color-table.vim'
Plugin 'slim-template/vim-slim'
Plugin 'nanotech/jellybeans.vim'
Plugin 'jgdavey/vim-blockle.git'
Plugin 'vim-scripts/closetag.vim'
Plugin 'tommcdo/vim-exchange'
Plugin 'AndrewRadev/switch.vim'
Plugin 'mattn/gist-vim'
Plugin 'mattn/webapi-vim'
Plugin 'tpope/vim-abolish'
Plugin 'tpope/vim-repeat'
Plugin 'gregsexton/gitv'
Plugin 'gabrielelana/vim-markdown'
Plugin 'henrik/vim-indexed-search'
Plugin 'vim-scripts/LargeFile'
Plugin 'skwp/greplace.vim'
Plugin 'chriskempson/base16-vim'
Plugin 'AndrewRadev/splitjoin.vim'
Plugin 'avakhov/vim-yaml'
Plugin 'idanarye/vim-merginal'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'godlygeek/tabular'
Plugin 'derekwyatt/vim-scala'
Plugin 'fatih/vim-go'

" All of your Plugins must be added before the following line
call vundle#end()

" CtrlP Delete
call ctrlp_bdelete#init()
" CtrlP Funky
let g:ctrlp_extensions = ['funky']
let g:ctrlp_funky_multi_buffers = 1

" Disable tag generation on file save
let g:vim_tags_auto_generate = 0

" Vim tmux runner
let g:VtrUseVtrMaps = 0
" Vim spec runner
let g:spec_runner_dispatcher = 'call VtrSendCommand("{command}")'
map <Leader>tf <Plug>RunCurrentSpecFile
map <Leader>tt <Plug>RunFocusedSpec
map <Leader>tl <Plug>RunMostRecentSpec

" delete buffer
nnoremap <C-c> :bnext\|bdelete #<CR>

" Directory list style
let g:netrw_liststyle = 0
" Netrw ignored files and folders
" let g:netrw_list_hide += '^\.*$'

" Don't map rubyhash keys
let g:rubyhash_map_keys = 0
" ruby path if you are using RVM
let g:ruby_path = system('rvm current')
" Disable mappings from vim-ruby-refactoring
let g:ruby_refactoring_map_keys=0
" Intent private methods
let g:ruby_indent_access_modifier_style = 'outdent'

" UltiSnips
let g:UltiSnipsSnippetDirectories=["UltiSnips"]

" Use UTF-8 without BOM
set encoding=utf-8 nobomb

" Get rid of ex-mode
nnoremap Q <nop>

" Invisible characters
set listchars=tab:▸\ ,trail:·,eol:¬,nbsp:_,extends:❯,precedes:❮

" Syntax coloring lines that are too long just slows down the world
set synmaxcol=1200

" Use only 1 space after "." when joining lines instead of 2
set nojoinspaces

" Don't reset cursor to start of line when moving around
set nostartofline

"" Autocomplete ids and classes in CSS
autocmd FileType css,scss set iskeyword=@,48-57,_,-,?,!,192-255
"" Add the '-' as a keyword in erb files
autocmd FileType eruby set iskeyword=@,48-57,_,192-255,$,-

set background=dark
colorscheme railscasts

" Make those debugger statements painfully obvious
au BufEnter *.rb syn match error contained "\<binding.pry\>"
au BufEnter *.rb syn match error contained "\<debugger\>"
au BufEnter *.rb syn match error contained "\<byebug\>"

syntax enable
syntax sync fromstart

set hlsearch                    " highlight the search
set ls=2                        " show a status line even if there's only one window

" Improve vim's scrolling speed
set ttyfast
set ttyscroll=3
set lazyredraw

set wildmenu                    " show completion on the modeline
set linespace=0                 " number of pixels between the lines
set splitright                  " open vertical splits on the right
set splitbelow                  " open the horizontal split below
set wrap                        " wrap long lines
set linebreak                   " break lines at word end
set nobackup                    " don't want no backup files
set nowritebackup               " don't make a backup before overwriting a file
set noswapfile                  " no swap files
set hidden                      " hide buffers when abandoned

" Time out on key codes but not mappings
set notimeout
set ttimeout
set ttimeoutlen=100

" Auto-reload buffers when files are changed on disk
set autoread

" Lines with equal indent form a fold.
set foldmethod=indent
set foldlevel=1
set foldnestmax=10
" Open all folds by default
set nofoldenable

set undofile                    " Save undo's after file closes
set undodir=~/.vim/undo         " where to save undo histories
set undolevels=1000             " How many undos
set undoreload=10000            " number of lines to save for undo

set vb                          " disable alert sound
set showcmd                     " display incomplete commands
set history=100                 " a ton of history

" Default shell and shell syntax and source ~/.bash_profile
set shell=/bin/bash\ --login
let g:is_bash=1

" Whitespace
set tabstop=2 shiftwidth=2      " a tab is two spaces
set expandtab                   " use spaces, not tabs
set backspace=indent,eol,start  " backspace through everything in insert mode

" Searching
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter
set scrolloff=0                 " keep a 5 line padding when moving the cursor

set autoindent                  " indent on enter
set smartindent                 " do smart indenting when starting a new line
set shiftround                  " indent to the closest shiftwidth

set switchbuf=""                " do not move focus/cursor to where the buffer is already open
set tagbsearch                  " use binary searching for tags

" The "Press ENTER or type command to continue" prompt is jarring and usually unnecessary.
set shortmess=atI

" remove search highlighting
nnoremap <leader>h :noh<cr>

" C-c send enter in insert mode
inoremap <C-c> <Esc>

" Search word under cursor
noremap K :Ack <cword><cr>
" Fire up Ack
noremap <leader>a :Ack 

cnoreabbrev W w
cnoreabbrev Q q

" Expand %% to current directory
" http://vimcasts.org/e/14
cnoremap %% <C-R>=expand('%')<cr>

" Limit commit message width and check spelling
autocmd Filetype gitcommit setlocal spell textwidth=72

" =============================================================================
" Filetypes and Custom Autocmds
" =============================================================================

augroup vimrcEx
  " Clear all autocmds for the current group
  autocmd!

  " Jump to last cursor position unless it's invalid or in an event handler or
  " a git commit
  au BufReadPost *
    \ if &filetype !~ '^git\c' && line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif

  " Some file types use real tabs
  au FileType {make,gitconfig} set noexpandtab sw=4

  " Treat JSON files like JavaScript
  au BufNewFile,BufRead *.json setf javascript

  " Make Python follow PEP8
  au FileType python set sts=4 ts=4 sw=4 tw=79

  " Make sure all markdown files have the correct filetype
  au BufRead,BufNewFile *.{md,markdown,mdown,mkd,mkdn,txt} setf markdown

  " MultiMarkdown requires 4-space tabs
  au FileType markdown set sts=4 ts=4 sw=4
augroup END

""
"" Status Line
""

if has("statusline") && !&cp
  " Default status line
  set statusline=%y\ %<%f\ %h%m%r%=%-16.(line\ %l\ of\ %L%)
  set statusline+=%#warningmsg#
  set statusline+=%*
  " format markers:
  "   %< truncation point
  "   %n buffer number
  "   %f relative path to file
  "   %m modified flag [+] (modified), [-] (unmodifiable) or nothing
  "   %r readonly flag [RO]
  "   %y filetype [ruby]
  "   %= split point for left and right justification
  "   %-35. width specification
  "   %l current line number
  "   %L number of lines in buffer
  "   %c current column number
  "   %V current virtual column number (-n), if different from %c
  "   %P percentage through buffer
  "   %) end of width specification
endif

" Complete till longest common string.
" When more than one match exists, list them all.
set wildmode=longest,list

" Disable output and VCS files
set wildignore+=*.o,*.out,*.obj,.git,*.rbc,*.rbo,*.class,.svn,*.gem

" Ignore images and log files
set wildignore+=*.gif,*.jpg,*.png,*.log

" Disable archive files
set wildignore+=*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz

" Ignore bundler and sass cache
set wildignore+=*/vendor/gems/*,*/vendor/cache/*,*/.bundle/*,*/.sass-cache/*

" Ignore rails temporary asset caches
set wildignore+=*/tmp/cache/assets/*/sprockets/*,*/tmp/cache/assets/*/sass/*

" Ignore custom folders
set wildignore+=*/resources/*

" Ignore node modules
set wildignore+=node_modules/*

" Disable temp and backup files
set wildignore+=*.swp,*~,._*

" Disable osx index files
set wildignore+=.DS_Store

" CtrlP
hi def link CtrlPMatch CursorLine
let g:ctrlp_clear_cache_on_exit = 0
let g:ctrlp_switch_buffer = 'Et'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git\|node_modules\|bin\|\.hg\|\.svn\|build\|log\|resources\|coverage\|doc\|tmp\|public/assets\|vendor\|Android',
  \ 'file': '\.jpg$\|\.exe$\|\.so$\|tags$\|\.dll$'
  \ }
nnoremap <C-b> :CtrlPBuffer<cr>

" Will allow you to use :w!! to write to a file using sudo if you
" forgot to sudo vim file (it will prompt for sudo password when writing)
cnoremap w!! %!sudo tee > /dev/null %

" Visually select the text that was last edited/pasted
nnoremap gV `[v`]
" selelct what you've just pasted
nnoremap gp `[v`]

" reselect visual block after indent/outdent
vnoremap < <gv
vnoremap > >gv


" Move between splits
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

nnoremap <leader><leader> :b#<cr>
nnoremap <leader>V :e $MYVIMRC<cr>

" clear those nasty fugitive buffers
autocmd BufReadPost fugitive://* set bufhidden=delete

" set haml filetype on weird extensions
autocmd BufRead,BufNewFile *.hamljs set filetype=haml

" quickfix window height is automatically adjusted to fit its contents
au FileType qf call AdjustWindowHeight(3, 15)
function! AdjustWindowHeight(minheight, maxheight)
  exe max([min([line("$"), a:maxheight]), a:minheight]) . "wincmd _"
endfunction

" tmux will only forward escape sequences to the terminal if surrounded by a DCS sequence
" http://sourceforge.net/mailarchive/forum.php?thread_name=AANLkTinkbdoZ8eNR1X2UobLTeww1jFrvfJxTMfKSq-L%2B%40mail.gmail.com&forum_name=tmux-users
if exists('$TMUX')
  let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
  let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
  let &t_SI = "\<Esc>]50;CursorShape=1\x7"
  let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

" highlight DiffAdd cterm=none ctermfg=157 ctermbg=bg gui=none guifg=bg guibg=#87d700
" highlight DiffDelete cterm=none ctermfg=167 ctermbg=bg gui=none guifg=fg guibg=#d70000
" highlight DiffChange cterm=none ctermfg=217 ctermbg=bg gui=none guifg=fg guibg=#878700
" highlight DiffText cterm=bold ctermfg=010 ctermbg=bg gui=none guifg=#00f00 guibg=#87d700

highlight SignColumn term=standout ctermfg=242 ctermbg=bg guifg=#777777 guibg=bg

" Auto save contents of a buffer when you lose focus
autocmd BufLeave,FocusLost * silent! update

" The custom :Qargs command sets the arglist to contain each of the files
" referenced by the quickfix list.
command! -nargs=0 -bar Qargs execute 'args' QuickfixFilenames()
function! QuickfixFilenames()
  " Building a hash ensures we get each buffer only once
  let buffer_numbers = {}
  for quickfix_item in getqflist()
    let buffer_numbers[quickfix_item['bufnr']] = bufname(quickfix_item['bufnr'])
  endfor
  return join(map(values(buffer_numbers), 'fnameescape(v:val)'))
endfunction

" Tell vim to resize itself (especially useful with tmux splits)
autocmd VimResized * :wincmd =

