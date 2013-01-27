" Pathogen
execute pathogen#infect()
execute pathogen#helptags()
filetype plugin on

colorscheme Mustang
syntax on

set autoindent
set autowrite
set colorcolumn=80
set cursorline
set expandtab
set gfn=Menlo:h14
set hlsearch
set incsearch
set nobackup
set nofoldenable
set noswapfile
set nowb
set nowrap
set number
set ruler
set shiftwidth=4
set showmatch
set softtabstop=4
set tabstop=4
set vb
set visualbell

set listchars=tab:▸\ ,eol:¬,trail:.

if has("gui_running")
    set guioptions=egmrt
endif

" Change bg color > column 80
let c_space_errors=1
hi ColorColumn ctermbg=236 guibg=#222222
hi CursorLine cterm=NONE
hi NonText guibg=#202020
hi LineNr guibg=#181818 ctermbg=236
let &colorcolumn=join(range(80,999),",")

" This unsets the 'last search pattern' register by hitting return
nnoremap <CR> :noh<CR><CR>

" Pig
augroup filetypedetect 
    au BufNewFile,BufRead *.pig set filetype=pig syntax=pig 
augroup END 

" For Command-T
set wildignore+=**/node_modules/**
set wildignore+=*.pyc 
set wildignore+=*.swp
set wildignore+=*DS_Store*
