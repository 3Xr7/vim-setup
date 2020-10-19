#! /bin/bash

vim_plugins=~/.vim/pack/vendor/start
tmp_dir=/tmp/vim-plugins

declare -A plugins
plugins=(
  ["nerdtree"]="preservim/nerdtree.git"
  ["tagbar"]="preservim/tagbar.git"
  ["lightline"]="itchyny/lightline.vim.git"
  ["fzf"]="junegunn/fzf.git"
  ["gitgutter"]="airblade/vim-gitgutter.git"
  ["fugitive"]="tpope/vim-fugitive.git"
  ["auto-pairs"]="jiangmiao/auto-pairs.git"
  ["ale"]="dense-analysis/ale.git"
)

if [ ! -d "$tmp_dir" ]; then
  echo "Creating tmp dir..."
  mkdir $tmp_dir
fi

if [ ! -d "$vim_plugins" ]; then
  echo "Creating plugins dir..."
  mkdir -p $vim_plugins
fi

if [ ! $(dpkg-query -W -f='${Status}' fzf | grep -c "install ok installed") ]; then
  echo "Install FZF dependancy..."
  sudo apt-get install fzf
fi

for key in ${!plugins[@]}; do
  git clone --depth 1 https://github.com/${plugins[${key}]} $tmp_dir/${key}
  if [ ! -d "$vim_plugins/${key}" ]; then
    mkdir $vim_plugins/${key}
  fi
  cp -R $tmp_dir/${key}/* $vim_plugins/${key}/
done

if [ -d "$tmp_dir" ]; then
  echo "Removing tmp files..."
  rm -rf $tmp_dir
fi

