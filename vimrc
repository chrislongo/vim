" Pathogen
execute pathogen#infect()
execute pathogen#helptags()
filetype plugin on

colorscheme Mustang
syntax on

set autoindent
set autowrite
filetype plugin on

colorscheme Mustang
syntax on

set autoindent
set autowrite
set colorcolumn=80
set cursorline
set expandtab
set hidden
set hlsearch
set incsearch
set nobackup
set nofoldenable
set noswapfile
set nowrap
set nowritebackup
set nrformats=
set number
set ruler
set shiftwidth=4
set showcmd
set showmatch
set softtabstop=4
set tabstop=4
set visualbell

set listchars=tab:▸\ ,eol:¬,trail:.

" ultisnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
let g:UltiSnipsSnippetsDir="~/.vim/bundle/ultisnips-snippets/UltiSnips"

" Change bg color > column 80
let c_space_errors=1
hi ColorColumn ctermbg=234 guibg=#222222
hi CursorLine cterm=NONE
hi NonText ctermbg=234 guibg=#202020
hi LineNr guibg=#181818 ctermbg=234
let &colorcolumn=join(range(81,999),",")

" This unsets the 'last search pattern' register by hitting return
nnoremap <CR> :noh<CR><CR>

" toggle invisibles with leader-l
nmap <leader>l :set list!<CR>

" Pig
augroup filetypedetect 
    au BufNewFile,BufRead *.pig set filetype=pig syntax=pig 
augroup END 

" For Command-T
set wildignore+=**/node_modules/**
set wildignore+=*.pyc 
set wildignore+=*.swp
set wildignore+=*DS_Store*
