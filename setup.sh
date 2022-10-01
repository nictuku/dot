#!/bin/bash

set -eux

# unpriviliged
curl -sL https://raw.github.com/nictuku/dot/master/deps.sh | bash
export PATH=$PATH:/usr/local/go/bin:$HOME/bin
export GOPATH=$HOME
go install golang.org/x/tools/cmd/goimports@latest

# dot files
curl -sL https://raw.github.com/nictuku/dot/master/install.sh | bash

# public keys
curl -sL https://raw.github.com/nictuku/dot/master/keys.sh | bash

# git environment
curl -sL https://raw.github.com/nictuku/dot/master/git.sh | bash
