" Pathogen
execute pathogen#infect()
execute pathogen#helptags()
filetype plugin on

colorscheme mortal-wombat

syntax on

set autoindent
set autowrite
set colorcolumn=80
set cursorline
set expandtab
set gfn=Monaco:h13
set hlsearch
set incsearch
set number
set ruler
set shiftwidth=4
set showmatch
set softtabstop=4
set tabstop=4
set vb

let c_space_errors=1
highlight ColorColumn ctermbg=236 guibg=#292929
let &colorcolumn=join(range(81,999),",")

if has("gui_running")
    set guioptions=egmrt
endif

autocmd BufWritePost *.py call Flake8()
nnoremap <CR> :noh<CR><CR>

set wildignore+=**/node_modules/** 
