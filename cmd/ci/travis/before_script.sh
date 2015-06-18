#!/bin/bash
set -ev
if [ ! -d "$GOPATH/src/gopkg.in/qml.v1"]; then
    mkdir -p $GOPATH/src/gopkg.in/qml.v1
    rsync -az ${TRAVIS_BUILD_DIR}/ $GOPATH/src/gopkg.in/qml.v1/
    export TRAVIS_BUILD_DIR=$GOPATH/src/gopkg.in/qml.v1
    cd $GOPATH/src/gopkg.in/qml.v1
fi
