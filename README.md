dot
===

nictuku's dot config files (bash, vim)

```
adduser --disabled-password --gecos "" yves
adduser yves sudo
sed 's/%sudo   ALL=(ALL:ALL) ALL/%sudo\tALL=(ALL:ALL) NOPASSWD:ALL/' /etc/sudoers > /etc/sudoers.tmp && mv /etc/sudoers.tmp /etc/sudoers
```

Install everything:

```
# unprivileged
curl -sL https://raw.githubusercontent.com/nictuku/dot/master/setup.sh | bash
```
