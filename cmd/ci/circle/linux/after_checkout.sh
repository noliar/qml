#!/bin/bash
git submodule sync
git submodule update --init --recursive
if [ ! -d "$GOPATH/src/gopkg.in/qml.v1" ]; then
    mkdir -p $GOPATH/src/gopkg.in/qml.v1
fi
rsync -az ./ $GOPATH/src/gopkg.in/qml.v1/
