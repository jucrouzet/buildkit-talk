#!/bin/sh

if ! [ -x "$(command -v screen)" ]; then
    echo 'Error: screen is not installed.' >&2
    exit 1
fi

if ! [ -x "$(command -v docker)" ]; then
    echo 'Error: docker is not installed.' >&2
    exit 1
fi
docker builder prune -f 
docker image prune -f
screen -c .screenrc
