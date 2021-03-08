#!/bin/bash

VIM_DIR="${HOME}/.vim"
VIMRC="${HOME}/.vimrc"

# using vim install vim-plugin
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# install nodejs
# Using Ubuntu
curl -fsSL https://deb.nodesource.com/setup_15.x | sudo -E bash -
sudo apt-get install -y nodejs


if !([ -d $VIM_DIR ]); then
    mkdir $VIM_DIR
fi

cp -v .editorconfig $VIM_DIR
cp -v .vimrc $VIMRC
