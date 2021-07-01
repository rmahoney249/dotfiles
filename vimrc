let g:airline_powerline_fonts = 1
let mapleader=","

let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()
"Plug 'lifepillar/vim-solarized8'
Plug 'altercation/vim-colors-solarized'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdtree'
Plug 'tpope/vim-git'
Plug 'https://tpope.io/vim/fugitive.git'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'garbas/vim-snipmate'
Plug 'honza/vim-snippets'
Plug 'tpope/vim-sensible'
"Plug 'dense-analysis/ale'
Plug 'psf/black'
call plug#end()

let g:snipMate = { 'snippet_version' : 1 }
let g:solarized_termcolors=16
let g:airline_solarized_bg='dark'
let g:airline_theme='solarized'
syntax enable
set bg=dark
colorscheme solarized

map <leader>n :NERDTreeToggle<CR>call togglebg#map("<F5>")
nnoremap <F9> :Black<CR>

set cursorline
set number
set numberwidth=1
if exists("&colorcolumn")
  set colorcolumn=79
endif

" Python
"au BufRead *.py compiler nose
"au FileType python set omnifunc=pythoncomplete#Complete
au FileType python setlocal expandtab shiftwidth=4 tabstop=8 softtabstop=4 smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class,with
au BufRead *.py set efm=%C\ %.%#,%A\ \ File\ \"%f\"\\,\ line\ %l%.%#,%Z%[%^\ ]%\\@=%m
" Don't let pyflakes use the quickfix window
"let g:pyflakes_use_quickfix = 0
autocmd BufWritePre *.py execute ':Black'
