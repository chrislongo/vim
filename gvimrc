colorscheme dusk2 

set clipboard=unnamed
set gfn=Monaco:h13
set guioptions=egmrt
set linespace=2

if has("gui_macvim")
    " ctrlp
    macmenu &File.New\ Tab key=<NOP>
    map <D-t> :CtrlP<CR>
    macmenu &File.Open\ Tab\.\.\. key=<NOP>
    map <D-T> :CtrlPBuffer<CR>
    map <D-2> :CtrlPBuffer<CR>
    map <D-3> :CtrlPMRUFiles<CR>
    
    " toggle list
    map <D-i> :set list!<CR>
    
    " disable find dialog
    macmenu Edit.Find.Find\.\.\. key=<NOP>
    map <D-f> /

    " toggle line wrap
    map <D-r> :set wrap!<CR>

    " nerdtree
    map <D-1> :NERDTreeToggle<CR>

    " buffers
    map <D-]> :bnext<CR>
    map <D-[> :bprev<CR>
    map <D-Backspace> :bdelete<CR>
endif
