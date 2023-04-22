#!/bin/bash

set -eux
GO_VERSION=1.19.1
if [ -f "/etc/debian_version" ]; then
  sudo apt update
  # nodejs is needed by vim-copilot
  sudo apt install git screen wget vim curl sudo mosh mercurial build-essential nodejs -y
  cd /tmp
  wget https://storage.googleapis.com/golang/go${GO_VERSION}.linux-amd64.tar.gz
  if [[ -d /usr/local/go ]] ; then sudo mv /usr/local/go{,.before-${GO_VERSION}}; fi
  sudo tar zxf go${GO_VERSION}.linux-amd64.tar.gz  -C /usr/local/
fi
