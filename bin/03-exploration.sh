#!/bin/bash

set -e

go get -d github.com/turing-complete/example/src
make -D "${GOPATH}/src/github.com/ready-steady/hdf5" install
