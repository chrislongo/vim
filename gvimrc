set gfn=Menlo:h14
set guioptions=egmrt
set laststatus=2 

if has("gui_macvim")
    macmenu &File.New\ Tab key=<nop>
    map <D-t> :CommandT<CR>
    map <D-i> :set list!<CR>
endif
