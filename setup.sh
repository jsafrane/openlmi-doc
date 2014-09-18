#!/bin/bash

# Configure local environment for documentation build.
#
# In reality, just check out all the git repositories we need into _ext/

set -e

pushd _ext
rm -rf openlmi-networking openlmi-providers openlmi-storage
git clone https://git.fedorahosted.org/git/openlmi-networking.git
git clone https://git.fedorahosted.org/git/openlmi-providers.git
git clone https://git.fedorahosted.org/git/openlmi-storage.git
git clone https://git.fedorahosted.org/git/openlmi-tools.git
popd

