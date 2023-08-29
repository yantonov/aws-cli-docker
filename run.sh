#!/bin/sh

# https://stackoverflow.com/questions/592620/how-can-i-check-if-a-program-exists-from-a-bash-script
if ! command -v make &> /dev/null
then
    echo "make tool is missing"
    exit 1
fi

export SRC="$(pwd)"

cd "$(dirname "$0")/docker"

make ssh
