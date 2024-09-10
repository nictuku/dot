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

Extra instructions

```
sudo apt install unzip
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install
```
