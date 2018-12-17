#!/bin/bash

set -eux
GO_VERSION=1.11.4
sudo apt update
sudo apt install git screen vim curl sudo mosh mercurial -y
cd /tmp
wget https://storage.googleapis.com/golang/go${GO_VERSION}.linux-amd64.tar.gz
if [[ -d /usr/local/go ]] ; then sudo mv /usr/local/go{,.before-${GO_VERSION}}; fi
sudo tar zxvf go${GO_VERSION}.linux-amd64.tar.gz  -C /usr/local/
