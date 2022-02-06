
"colour vim
set background=dark
set t_Co=256

set nocompatible              " be iMproved, required
syntax on

filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

" vim-preview"
Plugin 'xuhdev/vim-latex-live-preview'

"javacompleteme
Plugin 'artur-shaik/vim-javacomplete2'

"Youcompletme
Plugin 'valloric/youcompleteme'

"Vim-Airline
Plugin 'vim-airline/vim-airline'

"Vim Airline-Theme
Plugin 'vim-airline/vim-airline-themes'

"Vim-Powerline
"Plugin 'lokaltog/vim-powerline'
Plugin 'powerline/powerline'

"Vim-Devicons
Plugin 'ryanoasis/vim-devicons'

"Nerdtree
Plugin 'scrooloose/nerdtree'
Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'

"Comfortable-Motion vim
Plugin 'yuttie/comfortable-motion.vim'
" Cairo language
Plugin 'miguelmota/cairo.vim'

"Syntastic
Plugin 'scrooloose/syntastic'

"Delimitemate
Plugin 'raimondi/delimitmate'

"Startify
Plugin 'mhinz/vim-startify'

" Solidity code syntiax
Plugin 'tomlion/vim-solidity'

"Indanteline 
"Plugin 'yggdroot/indentline'
"Plugin 'junegunn/indentline'
"Plugin 'sbdchd/indentline.vim'
Plugin 'linuxthink/indentline'

"Python-mode
"Plugin 'python-mode/python-mode'

"Iceberg
"Plugin 'cocopon/iceberg.vim'

"pgmnt
"Plugin 'cocopon/pgmnt.vim'

"AfterGlow
"Plugin 'danilo-augusto/vim-afterglow'

"ligntligne
"Plugin 'itchyny/lightline.vim'

"Alduin
"Plugin 'alessandroyorba/alduin'

"Synthwave84
Plugin 'artanikin/vim-synthwave84'

"Html CSS
"Plugin 'othree/html5.vim'
Plugin 'mattn/emmet-vim' 

"Plugin VIFM
Plugin 'vifm/vifm.vim'

" Install L9 and avoid a Naming conflict if you've already installed a

" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"
"Autre fonction
set number
set mouse=a
set backspace=2
set ts=2 sts=2


"java completeme
autocmd FileType java setlocal omnifunc=javacomplete#Complete

"vim_powerline
let g:Powerline_symbols = 'fancy'

" Cairo language
let g:cairo_linter_autodsave = 1

"Vim-airline-Theme
" let g:airline_theme='atomic' 
"set laststatus=1
"AirlineTheme deus

"Vim-Airline
"let g:airline#extensions#tabline#enabled = 1
"let g:airline_statusline_ontop=1
let g:airline_theme = "seoul256"
"let g:airline#extensions#tabline#left_sep = ' '
"let g:airline#extensions#tabline#left_alt_sep = '|'

"vim-devicone UTF-8
set encoding=UTF-8
let g:airline_powerline_fonts = 1

"NERDTree
map <C-n> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1

"Comfortable-Motion Vim
noremap <silent> <ScrollWheelDown> :call comfortable_motion#flick(60)<CR>
noremap <silent> <ScrollWheelUp>   :call comfortable_motion#flick(-60)<CR>
let g:comfortable_motion_friction = 10.0
let g:comfortable_motion_air_drag = 7.0


"afterGlow
"let g:airline_theme='afterglow'
"let g:afterglow_blackout=1
"let g:afterglow_inherit_background=1

"colors Iceberg
"" colorscheme iceberg
"colors synthewave84
"colorscheme synthwave84
"Alduin
let g:alduin_Shout_Become_Ethereal = 1
"colorscheme alduin 

hi! Normal ctermbg=NONE guibg=NONE
hi! NonText ctermbg=NONE guibg=NONE

"Lightline
"let g:lightline = 
""{
""     \ 'colorscheme': 'seoul256'
""     \ }
if !has('atomic')
  set t_Co=256
endif

"Indentline
let g:indentline_char = 43
let g:indentLine_color_term = 239
set list lcs=tab:\|\

let g:indentline_ignored_filetypes = ['help', 'man']
let g:indentline_ignored_buftypes = ['terminal']
let g:indentline_char = '¦'
let g:indentline_max_indent_level = 20
let g:indentLine_color_term = 239

let g:indentLine_char = 'c'
let g:indentLine_enabled = 0

"Html Css
"-- EMMET CONFIG --
let g:user_emmet_leader_key=','

"LaTex pdf"
map I :! pdflatex %<CR><CR
map S :! mupdf-x11 $(echo %\| sed's/tex$/pdf/') & disown<CR>
