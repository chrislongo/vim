" Pathogen
execute pathogen#infect()
execute pathogen#helptags()
filetype plugin on

colorscheme mustang
syntax on

set autoindent
set autowrite
set colorcolumn=80
set cursorline
set expandtab
set hidden
set hlsearch
set incsearch
set laststatus=2
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
set smartcase
set softtabstop=4
set tabstop=4
set visualbell
set wildmenu

set listchars=tab:▸\ ,eol:¬,trail:.

" omnicomplete
set ofu=syntaxcomplete#Complete
let g:SuperTabDefaultCompletionType = "context"

" syntastic
let g:syntastic_check_on_open=1

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

" pig
au BufNewFile,BufRead *.pig set filetype=pig syntax=pig 

" coffeescript
au BufWritePost *.coffee silent CoffeeMake!
au BufNewFile,BufReadPost *.coffee setl foldmethod=indent

" session
let g:session_autosave='yes'
let g:session_autoload='yes'

set wildignore+=**/node_modules/**
set wildignore+=*.pyc 
set wildignore+=*.swp
set wildignore+=*DS_Store*
