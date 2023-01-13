#!/usr/bin/env bash

SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]:-$0}"; )" &> /dev/null && pwd 2> /dev/null; )";

save-upstream-location() {
    echo "${1}" > "${SCRIPT_DIR}/upstream-location.txt"
}

load-upstream-location() {
    cat "${SCRIPT_DIR}/upstream-location.txt"
}
