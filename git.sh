#!/bin/bash

git config --global user.name "Yves Junqueira"
git config --global user.email "yves.junqueira@gmail.com"

ssh-keygen -t dsa -f ~/.ssh/id_dsa -N ""
