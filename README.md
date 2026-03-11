# vim / neovim config

## Installation

Clone the repo:

    git clone https://github.com/chrislongo/vim.git ~/.vim

Symlink the Neovim config directory:

    ln -s ~/.vim ~/.config/nvim

Symlink Vim files (optional, if also using Vim):

    ln -s ~/.vim/vimrc ~/.vimrc
    ln -s ~/.vim/gvimrc ~/.gvimrc

Open Neovim — lazy.nvim will install itself and all plugins automatically on first launch:

    nvim
