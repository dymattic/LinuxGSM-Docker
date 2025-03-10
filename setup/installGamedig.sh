#!/bin/sh

set -o errexit
set -o nounset
if "$LGSM_DEBUG"; then
    set -o xtrace
fi

echo 'tzdata tzdata/Areas select Europe' | debconf-set-selections
echo 'tzdata tzdata/Zones/Europe select Berlin' | debconf-set-selections
apt-get update
DEBIAN_FRONTEND="noninteractive" apt-get install -y --no-install-recommends npm
npm install -g gamedig
