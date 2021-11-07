set nocompatible 
filetype off

call plug#begin('~/.vim/plugged')

Plug 'Raimondi/delimitMate'
Plug 'airblade/vim-gitgutter'
Plug 'chriskempson/base16-vim'
Plug 'chriskempson/vim-tomorrow-theme'
Plug 'chrislongo/Colour-Sampler-Pack'
Plug 'davidhalter/jedi-vim'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'ervandew/supertab'
Plug 'frazrepo/vim-rainbow'
Plug 'gmarik/vundle'
Plug 'itchyny/lightline.vim'
Plug 'kien/ctrlp.vim'
Plug 'pangloss/vim-javascript'
Plug 'scrooloose/nerdtree'
Plug 'sonph/onehalf', {'rtp': 'vim/'}
Plug 'scrooloose/syntastic'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'wookiehangover/jshint.vim'
Plug 'xolox/vim-misc'
Plug 'xolox/vim-session'

call plug#end()

filetype indent plugin on
