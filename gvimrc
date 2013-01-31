set clipboard=unnamed
set gfn=Menlo:h14
set guioptions=egmrt

if has("gui_macvim")
    " command-t
    macmenu &File.New\ Tab key=<nop>
    map <D-t> :CommandT<CR>
    
    " toggle list
    map <D-i> :set list!<CR>
    
    " disable find dialog
    macmenu Edit.Find.Find\.\.\. key=<nop>
    map <D-f> /

    " toggle line wrap
    map <D-r> :set wrap!<CR>
endif
