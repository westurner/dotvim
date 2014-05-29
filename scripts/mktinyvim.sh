#!/bin/sh
TINYVIMDIR="tinyvim"
mkdir -p $TINYVIMDIR
cd $TINYVIMDIR
ln -s -f ../bundle/jellybeans.vim .
ln -s -f ../bundle/syntastic .
ln -s -f ../bundle/tagbar .
ln -s -f ../bundle/bufexplorer .
ln -s -f ../bundle/vim-signify .
ln -s -f ../bundle/vim-fugitive .
ln -s -f ../bundle/vim-lawrencium .
ln -s -f ../bundle/vim-easymotion .
ln -s -f ../bundle/n3.vim .
ln -s -f ../bundle/salt-vim .
ln -s -f ../bundle/riv.vim
ln -s -f ../bundle/nerdtree .
ln -s -f ../bundle/ctrlp.vim .
