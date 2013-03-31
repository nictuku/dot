#!/bin/bash

set -eu

cd ~

if [[ ! -d "dot" ]]; then
   git clone https://github.com/nictuku/dot.git
fi

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
