#!/bin/bash

set -e

PACKAGES=(
  libglib2.0-dev
  libpng-dev
  libxml2-dev
)

sudo apt-get install -y ${PACKAGES[@]}
