#!/bin/bash
if [ ! -d "$GOPATH/src/gopkg.in/qml.v1" ]; then
    mkdir -p $GOPATH/src/gopkg.in/qml.v1
fi
rsync -az ./ $GOPATH/src/gopkg.in/qml.v1/
cd $GOPATH/src/gopkg.in/qml.v1
