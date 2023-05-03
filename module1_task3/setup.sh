#!/bin/bash
set -e

# Update and install required packages
apt-get update
apt-get install -y hugo make

# Build the website
make build
