#!/bin/sh

go build -buildmode=plugin -gcflags=all=-l -o patch/patch.so patch/patch.go
go build -gcflags=all=-l main.go
printf '\x07' | dd of=main bs=1 seek=160 count=1 conv=notrunc

