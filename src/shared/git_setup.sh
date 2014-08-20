#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
FILES="${DIR}"/git/*.sh
for f in $FILES; do
    "${f}"
done
