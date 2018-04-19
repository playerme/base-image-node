#!/bin/bash

set -o errexit
set -o pipefail
set -o nounset
# set -o xtrace

# install dependencies
apt-get update
apt-get install -y --allow-unauthenticated \
  build-essential \
  python2.7 \
  ca-certificates \
  libssl-dev \
  git

# set python ENVs
alias python=/usr/bin/python2.7
npm config set python /usr/bin/python2.7

# cleanup
apt-get autoremove
rm -rf /var/lib/apt/lists/*