#! /bin/bash

vim_themes=~/.vim/colors
tmp_dir=/tmp/hybrid-mat

if [ ! -d "$vim_themes" ]; then
  echo "Creating VIM themes directory..."
  mkdir -p $vim_themes
fi

git clone --depth 1 https://github.com/kristijanhusak/vim-hybrid-material.git $tmp_dir

cp $tmp_dir/colors/* $vim_themes

if [ -d "$tmp_dir" ]; then
  echo "Removing tmp files..."
  rm -rf $tmp_dir
fi

