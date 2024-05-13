#!/bin/sh

go build -buildmode=plugin -gcflags "all=-N -l" -o patch1/patch.so patch1/patch.go
go build -buildmode=plugin -gcflags "all=-N -l" -o patch2/patch.so patch2/patch.go
go build -gcflags "all=-N -l" main.go

#go build -buildmode=plugin -gcflags "all=-l" -o patch1/patch.so patch1/patch.go
#go build -buildmode=plugin -gcflags "all=-l" -o patch2/patch.so patch2/patch.go
#go build -gcflags "all=-l" main.go

#printf '\x07' | dd of=main bs=1 seek=160 count=1 conv=notrunc

