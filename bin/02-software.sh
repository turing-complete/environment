#!/bin/bash

set -e

SOFTWARE_ROOT="${HOME}/software"
CODE_ROOT="${HOME}/code"
GO_VERSION='1.7.3.linux-amd64'
GO_URL="https://storage.googleapis.com/golang/go${GO_VERSION}.tar.gz"
VIPS_VERSION='8.4.2'
VIPS_URL="http://www.vips.ecs.soton.ac.uk/supported/current/vips-${VIPS_VERSION}.tar.gz"

cd "${SOFTWARE_ROOT}"
curl -LO "${GO_URL}"
tar -xzf "go${GO_VERSION}.tar.gz"

echo "export GOROOT=${SOFTWARE_ROOT}/go" >> ~/.bash_profile
echo "export GOPATH=${CODE_ROOT}/go" >> ~/.bash_profile
echo 'export PATH=${GOROOT}/bin:${PATH}' >> ~/.bash_profile

source ~/.bash_profile

curl -LO "${VIPS_URL}"
tar -xzf "vips-${VIPS_VERSION}.tar.gz"
ln -s "vips-${VIPS_VERSION}" vips
cd vips
./configure --prefix=/usr/local
make
sudo make install

echo 'export LD_LIBRARY_PATH="/usr/local/lib:${LD_LIBRARY_PATH}"' >> .bash_profile

source ~/.bash_profile
