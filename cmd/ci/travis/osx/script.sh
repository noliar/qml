#!/bin/bash
go build
go get -u gopkg.in/check.v1
if [ "$GOHOSTARCH" != "amd64" ]; then
    go test -v -i
else
    go test -v -i -race
fi
echo "Run a sample"
cd examples/customicon/relativepath
go run relativepath.go