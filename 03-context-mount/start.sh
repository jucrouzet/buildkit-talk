#!/bin/sh

if ! [ -x "$(command -v docker)" ]; then
    echo 'Error: docker is not installed.' >&2
    exit 1
fi

echo "Building with legacy build system"
DOCKER_BUILDKIT=0 docker build --no-cache -t test .
echo "Building with build kit"
DOCKER_BUILDKIT=1 docker build --no-cache  -t test2 -f Dockerfile.experimental .

echo ""
echo ""
echo ""
echo "*** With legacy build system : "
echo "Number of layers : $(docker inspect  -f '{{len .RootFS.Layers}}' test)"
echo ""
docker inspect  -f '{{json .RootFS}}' test
echo ""
echo ""
echo ""
echo "*** With a fancy BuildKit support : "
echo ""
echo "Number of layers : $(docker inspect  -f '{{len .RootFS.Layers}}' test2)"
docker inspect  -f '{{json .RootFS}}' test2
