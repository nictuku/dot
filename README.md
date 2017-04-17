dot
===

nictuku's dot config files (bash, vim)

Install dependencies:

```
GO_VERSION=1.8.1
sudo apt update
sudo apt install realpath git screen vim curl sudo mosh mercurial -y
wget https://storage.googleapis.com/golang/go${GO_VERSION}.linux-amd64.tar.gz
if [[ -d /usr/local/go]] ; then sudo mv /usr/local/go{,.before-${GO_VERSION}}; fi
sudo tar zxvf go${GO_VERSION}.linux-amd64.tar.gz  -C /usr/local/
```

```
# unprivileged
export PATH=$PATH:/usr/local/go/bin
export GOPATH=$HOME
go get golang.org/x/tools/cmd/goimports
```

Install dot files:
```
curl -sL https://raw.github.com/nictuku/dot/master/install.sh | bash
```

Install public keys:

```
curl -sL https://raw.github.com/nictuku/dot/master/keys.sh | bash
```

Config git environment:

```
curl -sL https://raw.github.com/nictuku/dot/master/git.sh | bash
```

TODO: Consider using stow. See: http://brandon.invergo.net/news/2012-05-26-using-gnu-stow-to-manage-your-dotfiles.html
