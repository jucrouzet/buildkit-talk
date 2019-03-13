#syntax=docker/dockerfile:experimental
FROM arvindr226/alpine-ssh

RUN mkdir -p -m 0600 ~/.ssh && ssh-keyscan github.com >> ~/.ssh/known_hosts

RUN --mount=type=ssh ssh -T git@github.com
