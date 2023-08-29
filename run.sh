#!/bin/sh

# https://stackoverflow.com/questions/592620/how-can-i-check-if-a-program-exists-from-a-bash-script
if ! command -v make &> /dev/null
then
    echo "make tool is missing"
    echo "if you don't want to install it you can check content of the ./docker/Makefile and run the corresponding command manually"
    exit 1
fi

export SRC="$(pwd)"

cd "$(dirname "$0")/docker"

make ssh
