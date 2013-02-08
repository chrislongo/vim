set clipboard=unnamed
set gfn=Monaco:h13
set guioptions=egmrt

if has("gui_macvim")
    " ctrlp
    macmenu &File.New\ Tab key=<nop>
    map <D-t> :CtrlP<CR>
    macmenu &File.Open\ Tab\.\.\. key=<nop>
    map <D-T> :CtrlPBuffer<CR>
    
    " toggle list
    map <D-i> :set list!<CR>
    
    " disable find dialog
    macmenu Edit.Find.Find\.\.\. key=<nop>
    map <D-f> /

    " toggle line wrap
    map <D-r> :set wrap!<CR>

    " nerdtree
    map <D-1> :NERDTreeToggle<CR>

    " buffers
    map <D-6> :bnext<CR>
    map <D-^> :bprev<CR>
endif
