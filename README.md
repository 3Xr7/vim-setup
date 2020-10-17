# VIM Setup

Automated setup of vim how I like it.

## Prerequisites

 - FZF package installed on the system
 - Running a Debian based linux distrobution
 - Sudo access to install fzf if it is not found on the system

## Installs

### Plugins
 - [NERDTree](https://github.com/preservim/nerdtree)
 - [TagBar](https://github.com/majutsushi/tagbar)
 - [Lightline](https://github.com/itchyny/lightline.vim)
 - [FZF file searcher](https://github.com/junegunn/fzf)
 - [GitGutter](https://github.com/airblade/vim-gitgutter)
 - [Fugitive](https://github.com/tpope/vim-fugitive)
 - [Auto Pairs](https://github.com/jiangmiao/auto-pairs)

### Themes
 - [Hybrid Material](https://github.com/kristijanhusak/vim-hybrid-material)

## Usage

 - Clone the repo `git clone https://github.com/3Xr7/vim-setup.git`
 - From inside run `setup.sh`

### Note

If the `fzf` package is not found the script will attempt to run `sudo apt-get install fzf` to install it for you and as it is the script expects a debian based distrobution, it also doesn't attempt to figure out which distrobution is running. 
