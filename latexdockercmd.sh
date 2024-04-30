#!/bin/sh
IMAGE=dlazesz/texlive-full:latest
exec docker run --rm -it --user="$(id -u):$(id -g)" --env HOME=/tmp -v "$PWD":/workdir "$IMAGE" "$@"
