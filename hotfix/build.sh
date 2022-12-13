#!/bin/sh

go build -buildmode=plugin -gcflags=all=-l -o patch/patch.so patch/patch.go
go build -gcflags=all=-l main.go

