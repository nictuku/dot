dot
===

nictuku's dot config files (bash, vim)

```
adduser --disabled-password yves. # answer questions here
adduser yves visudo
```

sudoers line reminder:

```
%sudo	ALL=(ALL:ALL) NOPASSWD:ALL
```

Install everything:

```
# unprivileged
curl -sL https://raw.githubusercontent.com/nictuku/dot/master/setup.sh | bash
```
