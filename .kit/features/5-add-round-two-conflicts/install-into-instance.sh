#!/usr/bin/env bash

SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]:-$0}"; )" &> /dev/null && pwd 2> /dev/null; )";
git stash
git switch main
git switch -c add-round-two-conflicts
git am "${SCRIPT_DIR}"/*.patch
git switch main
git stash pop
