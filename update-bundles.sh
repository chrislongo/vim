#!/bin/sh

cd ~/.vim/bundles
git submodule foreach git pull origin master
