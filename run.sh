#!/bin/sh

command -v make >/dev/null 2>&1 || {
    echo "make tool is missing"
    echo "if you don't want to install it you can check content of the ./docker/Makefile and run the corresponding command manually"    
    exit 1;
}

export SRC="$(pwd)"

cd "$(dirname "$0")/docker"

make ssh
