colorscheme dusk2 

set guioptions=egmrt
set clipboard=unnamed

if has("mac")
	set gfn=Monaco:h13
    set linespace=2
elseif has("gui_gtk2")
    set gfn=Ubuntu\ Mono\ 12
endif

" nop out redundant MacVim menu items
if has("gui_macvim")
    macmenu &File.New\ Tab key=<NOP>
    macmenu &File.Open\ Tab\.\.\. key=<NOP>
    macmenu Edit.Find.Find\.\.\. key=<NOP>
endif

" ctrlp
map <D-T> :CtrlPBuffer<CR>
map <D-2> :CtrlPBuffer<CR>
map <D-3> :CtrlPMRUFiles<CR>

" toggle list
map <D-i> :set list!<CR>

" disable find dialog
map <D-f> /

" toggle line wrap
map <D-r> :set wrap!<CR>

" nerdtree
map <D-1> :NERDTreeToggle<CR>

" buffers
map <D-]> :bnext<CR>
map <D-[> :bprev<CR>
map <D-Backspace> :bdelete<CR>
