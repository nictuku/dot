#!/bin/bash

set -eux

if [ -f "/etc/debian_version" ]; then
    sudo apt update
    # nodejs is needed by vim-copilot
    export DEBIAN_FRONTEND=noninteractive
    sudo -E apt update
    sudo -E apt install -y -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold" git screen wget vim curl sudo mosh mercurial build-essential nodejs jq
    cd /tmp

    # Get the latest Go version
    GO_VERSION="$(curl https://go.dev/dl/?mode=json | jq -r '.[0].version' | sed 's/go//')"

    # Check if Go is already installed and if the installed version matches the latest version
    if command -v go >/dev/null 2>&1; then
        INSTALLED_GO_VERSION=$(go version | cut -d " " -f 3 | sed 's/go//')
        if [ "$INSTALLED_GO_VERSION" == "$GO_VERSION" ]; then
            echo "Go version $GO_VERSION is already installed. Exiting."
            exit 0
        fi
    fi

    wget https://storage.googleapis.com/golang/go${GO_VERSION}.linux-amd64.tar.gz

    if [[ -d /usr/local/go ]]; then
        sudo mv /usr/local/go{,.before-${GO_VERSION}}
    fi

    sudo tar zxf go${GO_VERSION}.linux-amd64.tar.gz -C /usr/local/
fi
