package main

import (
	"google.golang.org/protobuf/proto"
	"replayCall/src"
	"replayCall/src/client"
	"replayCall/src/pb/github.com/record"
	"replayCall/src/server"
)

func run(o src.ShowInf1) {
	o.F1()
	o.F2(100)
	o.F3(1, 999, 0.1, 0.9, 999.999, "hello world")
}

func runInClient() {
	o := client.CreateShowObj1()
	run(o)
}

func runInServer() {
	o := server.CreateShowObj1()
	run(o)
}

func replay() {
	objMap := make(map[int32]any)

	data := src.RecordGet() //read from file
	r := &record.Records{}
	err := proto.Unmarshal(data, r)
	if err != nil {
		panic(err)
	}
	for _, c := range r.Calls {
		if c.FuncName == "CreateShowObj1" {
			arg := record.CreateShowObj1{}
			proto.Unmarshal(c.FuncArgs, &arg) //fixme: err
			o := client.CreateShowObj1()
			objMap[arg.NewObjTag] = o
		} else if c.FuncName == "ShowInf1F1" {
			arg := record.ShowInf1F1{}
			proto.Unmarshal(c.FuncArgs, &arg)
			o := objMap[arg.ReceiverTag].(src.ShowInf1)
			o.F1()
		} else if c.FuncName == "ShowInf1F2" {
			arg := record.ShowInf1F2{}
			proto.Unmarshal(c.FuncArgs, &arg)
			o := objMap[arg.ReceiverTag].(src.ShowInf1)
			o.F2(arg.ArgI1)
		} else if c.FuncName == "ShowInf1F3" {
			arg := record.ShowInf1F3{}
			proto.Unmarshal(c.FuncArgs, &arg)
			o := objMap[arg.ReceiverTag].(src.ShowInf1)
			o.F3(arg.ArgI1, arg.ArgI2, arg.ArgF1, arg.ArgF2, arg.ArgF3, arg.ArgS1)
		}
	}
}

func main() {
	runInClient()

	runInServer()
	replay()
}
