#!/bin/bash
#
# Capture and print stdout, since gofmt doesn't use proper exit codes
#
set -e

output=$(goimports -w .)
[[ -z "$output" ]]
