#!/bin/bash

set -e

# Install required packages
apt-get update && apt-get install -y wget make

# Download Hugo v0.84.0 extended
wget https://github.com/gohugoio/hugo/releases/download/v0.84.0/hugo_extended_0.84.0_Linux-64bit.tar.gz

# Extract and install Hugo
tar -xf hugo_extended_0.84.0_Linux-64bit.tar.gz
mv hugo /usr/local/bin/
rm -rf hugo_extended_0.84.0_Linux-64bit.tar.gz LICENSE README.md

# install golangci-lint && markdown-link-check
curl -sSfL https://raw.githubusercontent.com/golangci/golangci-lint/master/install.sh | sh -s -- -b $(go env GOPATH)/bin
golangci-lint --version 
npm install -g markdownlint
npm install -g markdown-link-check

# Go to the project directory
cd "$(dirname "$0")"

# Build the website
make build
