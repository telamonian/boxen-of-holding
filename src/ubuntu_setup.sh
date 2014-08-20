#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

UBUNTU_FILES="${DIR}"/ubuntu/*.sh
for f in $UBUNTU_FILES; do
    "${f}"
done

"${DIR}"/shared/git_setup.sh
