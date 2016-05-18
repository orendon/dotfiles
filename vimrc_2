" content of this file is loaded BEFORE all the plugins
source ~/.vim/bundles.vim  " vundle plugins list
source ~/.vim/global.vim   " general global configuration
source ~/.vim/plugins.vim  " configuration for plugins that needs to be set BEFORE plugins are loaded
source ~/.vim/macros.vim   " some macros
if has('gui_running')
  source ~/.vim/gvimrc     " gui specific settings
end


source ~/.vim/before.vim   " local BEFORE configs

" after.vim is loaded from ./after/plugin/after.vim
" which should place it AFTER all the other plugins in the loading order
" bindings.vim and local.vim are loaded from after.vim

" -------------------------
" ----- CUSTOM STUFF ------
" -------------------------

" Show trailing whitespace and spaces before a tab:
:highlight ExtraWhitespace ctermbg=red guibg=red
:autocmd Syntax * syn match ExtraWhitespace /\s\+$\| \+\ze\\t/

" Show linenumbers
set number
set ruler

" highlight the current line
"set cursorline
" Highlight active column
"set cuc cul

" Theme related
set t_Co=256

" Set encoding
set encoding=utf-8

" Whitespace stuff
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

" indent lines
"set ts=1 sw=1 noet
"let g:indent_guides_lines_size=1
let g:indent_guides_color_change_percent = 70
let g:indent_guides_guide_size=1
let g:indent_guides_enable_on_vim_startup=0
let g:indent_guides_auto_colors=1
"autocmd VimEnter,ColorScheme * :hi IndentGuidesOdd guibg=red ctermbg=white
"autocmd VimEnter,ColorScheme * :hi IndentGuidesEven guibg=green ctermbg=lightgray

"set background=light

" extra config added from
" https://powerline.readthedocs.org/en/latest/installation/osx.html
syntax on
set encoding=utf-8
"set guifont=Menlo:h14
"set guifont=Anonymice\ Powerline:h15
colorscheme Tomorrow-Night-Bright

set t_Co=256
"set fillchars+=stl:\ ,stlnc:\
let g:Powerline_symbols = 'unicode'

" enable the_silver_searcher https://github.com/ggreer/the_silver_searcher
let g:ackprg = 'ag --nogroup --nocolor --column'
