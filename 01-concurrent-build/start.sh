#!/bin/sh

if ! [ -x "$(command -v screen)" ]; then
    echo 'Error: screen is not installed.' >&2
    exit 1
fi

if ! [ -x "$(command -v docker)" ]; then
    echo 'Error: docker is not installed.' >&2
    exit 1
fi

screen -c .screenrc