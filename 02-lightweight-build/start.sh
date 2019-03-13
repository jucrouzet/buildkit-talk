#!/bin/sh

if ! [ -x "$(command -v screen)" ]; then
    echo 'Error: screen is not installed.' >&2
    exit 1
fi

if ! [ -x "$(command -v docker)" ]; then
    echo 'Error: docker is not installed.' >&2
    exit 1
fi

if ! [ -f "1GB.txt" ]; then
    if ! [ -x "$(command -v dd)" ]; then
        echo 'Error: dd is not installed.' >&2
        exit 1
    fi
    echo 'Generating a 1GB file'
    dd if=/dev/zero of=1GB.txt count=1048576 bs=1024
fi

screen -c .screenrc
