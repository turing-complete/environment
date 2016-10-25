#!/bin/bash

set -e

PACKAGES=(
  libglib2.0-dev
  libtiff-dev
  libxml2-dev
)

sudo apt-get install -y ${PACKAGES[@]}
