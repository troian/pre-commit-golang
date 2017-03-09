#!/bin/bash

set -e -u -o pipefail # Fail on error

gitroot=$(git rev-parse --show-toplevel)

GOPATH=$GOPATH:$gitroot

cd $gitroot

go build -race -v -gcflags "-N -l" ./...
