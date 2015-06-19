#!/bin/bash
source /opt/qt54/bin/qt54-env.sh
cd $GOPATH/src/gopkg.in/qml.v1
go get -u gopkg.in/check.v1
if [ "$GOHOSTARCH" != "amd64" ]; then
    go test -v -i
else
    go test -v -i -race
fi
