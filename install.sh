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

# plugin manager
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
