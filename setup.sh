#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

OS_TYPE="$(uname -s)"
if [[ "${OS_TYPE}" == "Linux" ]]; then
    OS_NAME="$(tr '\0' '\n' < /etc/lsb-release | grep "DISTRIB_ID" | cut -d "=" -f 2- | tr '[:upper:]' '[:lower:]')"
else
    OS_NAME="$(echo "${OS_TYPE}" | tr '[:upper:]' '[:lower:]')"
fi

echo "your os is: ${OS_NAME}"
if [ -f "${DIR}/src/${OS_NAME}_setup.sh" ]; then
    "${DIR}/src/${OS_NAME}_setup.sh"
else
    echo "error: your OS is currently unsupported"
fi
