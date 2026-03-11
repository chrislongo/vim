# vim / neovim config

## Installation

Optionally, back up existing configs before installing:

    mv ~/.vim ~/.vim.bak 2>/dev/null
    mv ~/.config/nvim ~/.config/nvim.bak 2>/dev/null
    mv ~/.vimrc ~/.vimrc.bak 2>/dev/null
    mv ~/.gvimrc ~/.gvimrc.bak 2>/dev/null

Clone the repo:

    git clone https://github.com/chrislongo/vim.git ~/.vim

Symlink the Neovim config directory:

    ln -s ~/.vim ~/.config/nvim

Symlink Vim files (optional, if also using Vim):

    ln -s ~/.vim/vimrc ~/.vimrc
    ln -s ~/.vim/gvimrc ~/.gvimrc

Open Neovim — lazy.nvim will install itself and all plugins automatically on first launch:

    nvim
