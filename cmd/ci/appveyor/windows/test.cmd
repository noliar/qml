@echo off
go get -u gopkg.in/check.v1
IF "%Platform%" == "x64" ( go test -v -i -race ) ELSE ( go test -v -i )
