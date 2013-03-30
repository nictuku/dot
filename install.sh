#!/bin/bash

# Required Debian/Ubuntu packages;
# sudo apt-get install realpath git

set -eu

cd ~

if [[ ! -d "dot" ]]; then
  if [[ "$USER" == "nictuku" ]]; then
   git clone git@github.com:nictuku/dot.git
  else 
   git clone https://github.com/nictuku/dot.git
  fi
fi

for x in dot/home/*; do
  t=$(date +%s)
  x=$(realpath $x)
  base=$(basename $x)
  dir=$(dirname $x)
  echo -n "Backing up: " 
  mv -v ~/.$base{,.$t} || true
  
  echo -n "Linking: "
  ln -v -s $dir/.$base ~/.$base
done
