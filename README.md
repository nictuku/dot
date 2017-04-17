dot
===

nictuku's dot config files (bash, vim)

Install dependencies:

```

sudo apt update
sudo apt install realpath git screen vim curl sudo mosh mercurial -y
wget https://storage.googleapis.com/golang/go1.8.linux-amd64.tar.gz
sudo mv /usr/local/go{,.off}
sudo tar zxvf go1.8.1.linux-amd64.tar.gz  -C /usr/local/
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
