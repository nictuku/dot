dot
===

nictuku's dot config files (bash, vim)

Install dependencies:

```
sudo apt-get install realpath git screen vim curl sudo mosh mercurial
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
