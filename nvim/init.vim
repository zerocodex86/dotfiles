:set number
:set omnifunc=syntaxcomplete#Complete
:set mouse=a
:set relativenumber
:set incsearch
:filetype plugin on
:set tabstop=4
:set shiftwidth=4
:set expandtab
:set softtabstop=4
:syntax on
call plug#begin()
Plug 'https://github.com/vim-airline/vim-airline'
Plug 'https://github.com/preservim/nerdtree'
Plug 'https://github.com/tpope/vim-surround'
Plug 'https://github.com/tpope/vim-commentary'
Plug 'https://github.com/ap/vim-css-color'
Plug 'https://github.com/rafi/awesome-vim-colorschemes'
Plug 'https://github.com/ryanoasis/vim-devicons'
Plug 'https://github.com/tc50cal/vim-terminal'
Plug 'https://github.com/terryma/vim-multiple-cursors'
Plug 'https://github.com/preservim/tagbar' 
Plug 'https://github.com/neoclide/coc.nvim'
Plug 'jackguo380/vim-lsp-cxx-highlight'
Plug 'vim-syntastic/syntastic'
Plug 'rhysd/vim-clang-format'

set encoding=UTF-8

nmap <F8> :TagbarToggle<CR>

:set completeopt-=preview 

source ~/.config/nvim/plugged/awesome-vim-colorschemes/colors/iceberg.vim


"c++?
Plug 'iCyMind/NeoSolarized'
Plug 'https://github.com/vim-airline/vim-airline-themes.git'
" common plugins
Plug 'unblevable/quick-scope'
Plug 'yssl/QFEnter'
"Plug 'https://github.com/SirVer/ultisnips.git'
" code completion
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-compe'





call plug#end()


" c++ syntax highlighting
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1



"nnoremap <Space> :exec "normal i".nr2char(getchar())."\e"<CR>
tnoremap <Esc> <C-\><C-n>
" default splits to bottom right
set splitbelow splitright

" incremental command live feedback
set inccommand=nosplit

" netrw settings
let g:netrw_altv=1
let g:netrw_browse_split=2
let g:netrw_liststyle=3
let g:netrw_banner=0
let g:netrw_winsize=18
