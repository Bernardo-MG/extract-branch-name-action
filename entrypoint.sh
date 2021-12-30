#!/bin/sh

# Fails if any commands returns a non-zero value
set -e

echo ::set-output name=branchName::"${GITHUB_REF#refs/heads/}"

exit 0
