#!/bin/sh

#
# Extracts the name of the current Github branch.
#
# -- OUTPUT --
#
# - branchName: the current Github branch
#

# Fails if any commands returns a non-zero value
set -e

echo "name=branchName::"${GITHUB_REF#refs/heads/}" >> $GITHUB_OUTPUT

exit 0
