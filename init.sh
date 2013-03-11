#!/usr/bin/env bash

cd ~/.vim
git clone https://github.com/gmarik/vundle.git bundle/vundle
vim +BundleInstall +qall
