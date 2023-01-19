#!/bin/bash
rm -rf /usr/local/go
apt update
apt install zip -y
apt install curl -y
curl --silent --location https://deb.nodesource.com/setup_16.x | bash -
apt install nodejs -y
npm install -g markdownlint-cli 1>&2
markdownlint module4_task1/README.md
markdownlint module4_task1/DEPLOY.md