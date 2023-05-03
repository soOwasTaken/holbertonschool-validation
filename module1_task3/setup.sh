#!/bin/bash

set -e

# Install required packages
apt-get update && apt-get install -y hugo=0.84.0-1ubuntu1~18.04.1 make

# Go to the project directory
cd "$(dirname "$0")"

# Build the website
make build