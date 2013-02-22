source ~/.vim/vundlerc.vim

set background=dark
colorscheme xoria256 
syntax on

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
"hi NonText ctermbg=234 guibg=#202020
"hi LineNr guibg=#181818 ctermbg=234
"hi ColorColumn ctermbg=234 guibg=#222222

" highlight past line 80
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

" This unsets the 'last search pattern' register by hitting return
nnoremap <CR> :noh<CR><CR>

" pig
au BufNewFile,BufRead *.pig set filetype=pig syntax=pig 

" coffeescript
au BufWritePost *.coffee silent CoffeeMake!
au BufNewFile,BufReadPost *.coffee setl shiftwidth=2 expandtab

" session
let g:session_autosave='yes'
let g:session_autoload='yes'

" ignore these file types in ctrlp, etc.
set wildignore+=**/node_modules/**
set wildignore+=*.pyc 
set wildignore+=*.swp
set wildignore+=*DS_Store*

" no array keys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
imap <Up> <NOP>
imap <Down> <NOP>
imap <Left> <NOP>
imap <Right> <NOP>
