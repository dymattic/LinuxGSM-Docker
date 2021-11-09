#!/bin/sh

set -o errexit
set -o nounset
echo "[cleanImage] cleaning image"


apt-get autoremove -y
apt-get clean -y
rm -rf /var/lib/apt/lists/* >> /dev/null 2>&1 || true
rm "/home/installMinimalDependencies.sh" \
    "/home/installLGSM.sh" >> /dev/null 2>&1 || true
