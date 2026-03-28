dot
===

nictuku's dot config files (bash, vim)

```
adduser --disabled-password --gecos "" yves
adduser yves sudo
echo 'yves ALL=(ALL:ALL) NOPASSWD:ALL' > /etc/sudoers.d/90-yves-nopasswd && chmod 0440 /etc/sudoers.d/90-yves-nopasswd && visudo -cf /etc/sudoers.d/90-yves-nopasswd```

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
