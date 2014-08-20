#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

DARWIN_FILES="${DIR}/darwin/*.sh"
for f in "${DARWIN_FILES}"; do
    "${f}"
done

"${DIR}/shared/git_setup.sh"
