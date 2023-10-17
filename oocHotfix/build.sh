#!/bin/sh

go build -buildmode=plugin -gcflags=all=-l -o patch1/patch.so patch1/patch.go
go build -gcflags=all=-l main.go
#/usr/local/Cellar/go/1.19.8/bin/go build -buildmode=plugin -gcflags=all=-l -o patch1/patch.so patch1/patch.go
#/usr/local/Cellar/go/1.19.8/bin/go build -gcflags=all=-l main.go
printf '\x07' | dd of=main bs=1 seek=160 count=1 conv=notrunc

