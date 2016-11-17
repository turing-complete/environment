#!/bin/bash

set -e

CODE_ROOT="${HOME}/code"

go get -d github.com/turing-complete/application/src
ln -s "${GOPATH}/src/github.com/ready-steady" "${CODE_ROOT}/github.com/ready-steady"
ln -s "${GOPATH}/src/github.com/turing-complete" "${CODE_ROOT}/github.com/turing-complete"
make -C "${GOPATH}/src/github.com/ready-steady/hdf5" install
