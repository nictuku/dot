#!/bin/bash

set -eux
if [ -f "/etc/debian_version" ]; then
  sudo apt update
  # nodejs is needed by vim-copilot
  export DEBIAN_FRONTEND=noninteractive
  sudo -E apt update
  sudo -E apt install -y -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold" git screen wget vim curl sudo mosh mercurial build-essential nodejs jq
  cd /tmp
  GO_VERSION="$(curl https://go.dev/dl/?mode=json | jq -r '.[0].version')"
  wget https://storage.googleapis.com/golang/go${GO_VERSION}.linux-amd64.tar.gz
  if [[ -d /usr/local/go ]] ; then sudo mv /usr/local/go{,.before-${GO_VERSION}}; fi
  sudo tar zxf go${GO_VERSION}.linux-amd64.tar.gz  -C /usr/local/
fi
