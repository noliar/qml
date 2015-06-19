#!/bin/bash
source /opt/qt54/bin/qt54-env.sh
cd $GOPATH/src/gopkg.in/qml.v1
printenv
go build
