syntax on
set nocompatible           " отключить совместимость с Vi, обязательно
filetype off               " обязательно

let g:pymode_python = 'python3'

" установка пути среды выполнения для включения Vundle и инициализация
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Разрешить Vundle управление Vundle, обязательно
Plugin 'VundleVim/Vundle.vim'

" Ниже приводятся примеры различных поддерживаемых форматов.
" Команды Plugin должны располагаться между vundle#begin/end.
" Плагин в репозитории GitHub
Plugin 'tpope/vim-fugitive'
Plugin 'majutsushi/tagbar'
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'kien/ctrlp.vim'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}


" Все команды Plugin должны быть добавлены до этой строки
call vundle#end()          " обязательно
filetype plugin indent on  " обязательно

" Автоматически открывать панель tagbar в файлах C, не обязательно
autocmd FileType c call tagbar#autoopen(0)

" Автоматически открывать панель tagbar в файлах Python, не обязательно
autocmd FileType python call tagbar#autoopen(0)

" Вывести строку состояния, не обязательно
set laststatus=2

" Установить статус как git status (branch), не обязательно
set statusline=%{FugitiveStatusline()}


" Split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Enable folding
set foldmethod=indent
set foldlevel=99
let g:SimpylFold_docstring_preview=1
" Space to fold/unfold
nnoremap <space> za

" PEP 8 indentation standart
au BufNewFile,BufRead *.py
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix
" For other apps
au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2
    \ set softtabstop=2
    \ set shiftwidth=2

au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/
set encoding=utf-8

let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g :YcmCompleter GoTODefinitionElseDeclaration<CR>

"python with virtualenv support
"py << EOF
"import os
"import sys
"if 'VIRTUAL_ENV' in os.environ:
"  project_base_dir = os.environ['VIRTUAL_ENV']
"  activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
"  execfile(activate_this, dict(__file__=activate_this))
"EOF

let python_highlight_all=1

" Color schemas
if has('gui_running')
	set background=dark
	colorscheme solarized
else
	colorscheme "One Dark"
endif

"call togglebg#map("<F5>")

let NERDTreeIgnore=['\.pyc$', '\~$']

set nu

set clipboard=unnamed


