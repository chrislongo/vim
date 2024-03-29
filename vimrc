source ~/.vim/pluggedrc.vim

set background=dark
if has("gui_running")
    colorscheme base16-tomorrow
else
    let g:gruvbox_italic=1
    colorscheme gruvbox
endif
syntax on

set t_Co=256
set autoindent
set autowrite
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
set nrformats=hex
set number
set ruler
set shiftwidth=4
set showcmd
set showmatch
set showmode
set smartcase
set softtabstop=4
set tabstop=4
set wildmenu

scriptencoding utf-8
set listchars=tab:▸\ ,eol:¬,trail:.

" omnicomplete
set omnifunc=syntaxcomplete#Complete
let g:SuperTabDefaultCompletionType = "context"
let g:SuperTabContextDefaultCompletionType = "<C-X><C-O>"

" syntastic
let g:syntastic_check_on_open=1

" ultisnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
let g:UltiSnipsSnippetsDir="~/.vim/snippets/UltiSnips"

let c_space_errors=1
hi CursorLine cterm=NONE
hi Visual guifg=NONE

" This unsets the 'last search pattern' register by hitting return
nnoremap <CR> :noh<CR><CR>

" file types with 2 spaces for indent
au BufNewFile,BufReadPost *.coffee setl shiftwidth=2 expandtab tabstop=2
au BufNewFile,BufReadPost *.rb setl shiftwidth=2 expandtab
au BufNewFile,BufReadPost *.xml setl shiftwidth=2 expandtab

" session
let g:session_autosave='yes'
let g:session_autoload='yes'

" ignore these file types in ctrlp, etc.
set wildignore+=**/node_modules/**
set wildignore+=*.pyc
set wildignore+=*.swp
set wildignore+=*DS_Store*

" Rainbow parentheses improved
let g:rainbow_active = 1
