#!/usr/bin/env bash

cd ~/.vim/bundles
git submodule foreach git pull origin master
