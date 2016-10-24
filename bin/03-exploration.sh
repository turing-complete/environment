#!/bin/bash

set -e

go get -d github.com/turing-complete/example/src
make -C "${GOPATH}/src/github.com/ready-steady/hdf5" install
