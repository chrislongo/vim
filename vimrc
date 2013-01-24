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
set gfn=Menlo:h14
set hlsearch
set incsearch
set number
set ruler
set shiftwidth=4
set showmatch
set softtabstop=4
set tabstop=4
set vb

" Change bg color > column 80
let c_space_errors=1
highlight ColorColumn ctermbg=236 guibg=#292929
let &colorcolumn=join(range(81,999),",")

if has("gui_running")
    set guioptions=egmrt
endif

" Python lint
autocmd BufWritePost *.py call Flake8()
nnoremap <CR> :noh<CR><CR>

" Show syntax highlighting groups for word under cursor
nmap <C-S-P> :call <SID>SynStack()<CR>
function! <SID>SynStack()
    if !exists("*synstack")
        return
    endif
    echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc

" Pig
augroup filetypedetect 
    au BufNewFile,BufRead *.pig set filetype=pig syntax=pig 
augroup END 

set wildignore+=**/node_modules/** 
