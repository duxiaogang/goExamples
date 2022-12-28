module github.com/duxiaogang/goExamples

go 1.19

//replace github.com/agiledragon/gomonkey/v2 => /Users/admin/github/gomonkey

require (
	github.com/agiledragon/gomonkey/v2 v2.9.0
	github.com/golang/mock v1.6.0
	github.com/google/wire v0.5.0
	github.com/vmihailenco/msgpack/v5 v5.3.5
)

require github.com/vmihailenco/tagparser/v2 v2.0.0 // indirect
