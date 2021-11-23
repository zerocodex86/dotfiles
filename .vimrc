set nocompatible              " be iMproved, required
filetype off                  " required

"=====================================================
"" Vundle settings
"=====================================================
"" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

	Plugin 'gmarik/Vundle.vim'		" let Vundle manage Vundle, required

	"---------=== Code/project navigation ===-------------
	Plugin 'scrooloose/nerdtree' 	    	" Project and file navigation
	Plugin 'majutsushi/tagbar'          	" Class/module browser
	"
	""------------------=== Other ===----------------------
	Plugin 'bling/vim-airline'   	    	" Lean & mean status/tabline for vim
	Plugin 'fisadev/FixedTaskList.vim'  	" Pending tasks list
	Plugin 'rosenfeld/conque-term'      	" Consoles as buffers
	Plugin 'tpope/vim-surround'	   	" Parentheses, brackets, quotes, XML tags, and more
	Plugin 'vim-airline/vim-airline-themes'
	"--------------=== Snippets support ===---------------
	Plugin 'garbas/vim-snipmate'		" Snippets manager
	Plugin 'MarcWeber/vim-addon-mw-utils'	" dependencies #1
	Plugin 'tomtom/tlib_vim'		" dependencies #2
	Plugin 'honza/vim-snippets'		" snippets repo
	"
	""---------------=== Languages support ===-------------
	" --- Python ---
	Plugin 'klen/python-mode'	        " Python mode (docs, refactor, lints,

	Plugin 'davidhalter/jedi-vim' 		" Jedi-vim autocomplete plugin
	Plugin 'mitsuhiko/vim-jinja'		" Jinja support for vim
	Plugin 'mitsuhiko/vim-python-combined'  " Combined Python 2/3 for Vim

call vundle#end()            		" required
filetype on
filetype plugin on
"filetype plugin indent


"colorscheme molokai
syntax on
set backspace=indent,eol,start
aunmenu Help.
aunmenu Window.
let no_buffers_menu=1
set mousemodel=popup

set ruler
set completeopt-=preview
set gcr=a:blinkon0

tab sball
set switchbuf=useopen

" отключаем пищалку и мигание
set visualbell t_vb= 
set novisualbell       

set enc=utf-8	     " utf-8 по дефолту в файлах
set ls=2             " всегда показываем статусбар
set incsearch	     " инкреминтируемый поиск
set hlsearch	     " подсветка результатов поиска
set nu	             " показывать номера строк
set scrolloff=5	     " 5 строк при скролле за раз

" отключаем бэкапы и своп-файлы
set nobackup 	     " no backup files
set nowritebackup    " only in case you don't want a backup
"file while editing
set noswapfile 	     " no swap files

" прячем панельки
" set guioptions-=m   " меню
set guioptions-=T    " тулбар
" set guioptions-=r   "  скроллбары

" настройка на Tab
set smarttab
set tabstop=8
augroup vimrc_autocmds
    autocmd!
    autocmd FileType ruby,python,javascript,c,cpp highlight Excess ctermbg=DarkGrey guibg=Black
    autocmd FileType ruby,python,javascript,c,cpp match Excess /\%80v.*/
    autocmd FileType ruby,python,javascript,c,cpp set nowrap
augroup END

" указываем каталог с настройками SnipMate
let g:snippets_dir = '~/.vim/vim-snippets/snippets'
"
 " настройки Vim-Airline
 set laststatus=2
 let g:airline_theme='badwolf'
 let g:airline_powerline_fonts = 1
 let g:airline#extensions#tabline#enabled = 1
 let g:airline#extensions#tabline#formatter = 'unique_tail'

 " TagBar настройки
 map <F4> :TagbarToggle<CR>
 let g:tagbar_autofocus = 0 " автофокус на Tagbar при открытии

 " NerdTree настройки
 " показать NERDTree на F3
 map <F3> :NERDTreeToggle<CR>
 "игноррируемые файлы с расширениями
 let NERDTreeIgnore=['\~$', '\.pyc$', '\.pyo$', '\.class$', 'pip-log\.txt$', '\.o$']  
"
" " TaskList настройки
map <F2> :TaskList<CR> 	   " отобразить список тасков на F2

" " Работа буфферами
map <C-q> :bd<CR> 	   " CTRL+Q - закрыть текущий буффер
let g:pymode_rope = 0
let g:pymode_rope_completion = 0
let g:pymode_rope_complete_on_dot = 0

" документация
let g:pymode_doc = 0
let g:pymode_doc_key = 'K'
" " проверка кода
let g:pymode_lint = 1
let g:pymode_lint_checker = "pyflakes,pep8"
let g:pymode_lint_ignore="E501,W601,C0110"
" " провека кода после сохранения
let g:pymode_lint_write = 1
"
" " поддержка virtualenv
let g:pymode_virtualenv = 1
"
" " установка breakpoints
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_key = '<leader>b'
"
" " подстветка синтаксиса
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all
"
" " отключить autofold по коду
let g:pymode_folding = 0
"
" " возможность запускать код
let g:pymode_run = 0

let g:jedi#popup_select_first = 0

autocmd FileType python set completeopt-=preview " раскомментируйте, в случае, если не надо, чтобы jedi-vim показывал документацию по методу/классу
autocmd FileType python setlocal expandtab shiftwidth=4 tabstop=8
\ formatoptions+=croq softtabstop=4 smartindent
\ cinwords=if,elif,else,for,while,try,except,finally,def,class,with
autocmd FileType pyrex setlocal expandtab shiftwidth=4 tabstop=8 softtabstop=4 smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class,with javascript_enable_domhtmlcss=1
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd BufNewFile,BufRead *.json setlocal ft=javascript

autocmd FileType html set omnifunc=htmlcomplete#CompleteTags





" --- template language support (SGML / XML too) ---
  autocmd FileType html,xhtml,xml,htmldjango,htmljinja,eruby,mako setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2
  autocmd bufnewfile,bufread *.rhtml setlocal ft=eruby
  let g:closetag_default_xml=1
  let g:sparkupNextMapping='<c-l>'
  autocmd FileType html,htmldjango,htmljinja,eruby,mako let b:closetag_html_style=1
  autocmd FileType html,xhtml,xml,htmldjango,htmljinja,eruby,mako source  ~/.vim/scripts/closetag.vim


autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType css setlocal expandtab shiftwidth=4 tabstop=4 softtabstop=4
