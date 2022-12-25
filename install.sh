#!/bin/bash

set -eu

cd ~

if [[ ! -d "dot" ]]; then
   git clone https://github.com/nictuku/dot.git
fi

# for OSX
realpath() {
    [[ $1 = /* ]] && echo "$1" || echo "$PWD/${1#./}"
}

for x in dot/home/*; do
  t=$(date +%s)
  x=$(realpath $x)
  base=$(basename $x)
  dir=$(dirname $x)
  echo -n "Backing up: " 
  mv -v ~/.$base{,.$t} || true
  
  echo -n "Linking: "
  ln -v -s $dir/$base ~/.$base
done
# Vundle plugin manager
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

function clone() {
   repo=$1 # https://github.com/fatih/vim-go.git
   dest=$2 # ~/.vim/pack/plugins/start/vim-go
   mkdir -p $dest
   cd $dest
   git init
   if ! git config remote.origin.url &> /dev/null;then
	   git remote add origin $repo
   fi
   git fetch origin master
   git reset origin/master # --hard to wipe everything but is dangerous
}

# vim-go
clone https://github.com/fatih/vim-go.git ~/.vim/pack/plugins/start/vim-go
clone git://github.com/ntpeters/vim-better-whitespace.git ~/.vim/bundle/vim-better-whitespace
clone https://github.com/github/copilot.vim.git ~/.vim/pack/github/start/copilot.vim
