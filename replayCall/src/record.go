package src

import (
	"google.golang.org/protobuf/proto"
	"replayCall/src/pb/github.com/record"
)

var gR *record.Records
var gFrame int32

func RecordClear() {
	gR = &record.Records{}
	gFrame = 0
}

func RecordAdd(funcName string, args proto.Message) {
	c := &record.Call{}
	c.Frame = gFrame
	c.FuncName = funcName
	bts, err := proto.Marshal(args)
	if err != nil {
		panic(err)
	}
	c.FuncArgs = bts
	gR.Calls = append(gR.Calls, c)
}

func RecordGet() []byte {
	bts, err := proto.Marshal(gR)
	if err != nil {
		panic(err)
	}
	return bts
}

func init() {
	RecordClear()
}
