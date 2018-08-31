#!/bin/bash

git config --global user.name "Yves Junqueira"
git config --global user.email "yves.junqueira@gmail.com"

ssh-keygen -t ed25519 -f ~/.ssh/id_ed25519 -N ""
