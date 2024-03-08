package server

import (
	"replayCall/src"
	"replayCall/src/pb/github.com/record"
)

type ShowObj1 struct {
	tag int32
}

func (o *ShowObj1) F1() {
	//fmt.Println("server.ShowObj1.F1()")
	pb := &record.ShowInf1F1{}
	pb.ReceiverTag = o.tag
	src.RecordAdd("ShowInf1F1", pb)
}

func (o *ShowObj1) F2(i1 int32) {
	//fmt.Printf("server.ShowObj1.F2(%d)\n", i1)
	pb := &record.ShowInf1F2{}
	pb.ReceiverTag = o.tag
	pb.ArgI1 = i1
	src.RecordAdd("ShowInf1F2", pb)
}

func (o *ShowObj1) F3(i1, i2 int32, f1, f2, f3 float32, s1 string) {
	//fmt.Printf("server.ShowObj1.F3(%d, %d, %f, %f, %f, %s)\n", i1, i2, f1, f2, f3, s1)
	pb := &record.ShowInf1F3{}
	pb.ReceiverTag = o.tag
	pb.ArgI1 = i1
	pb.ArgI2 = i2
	pb.ArgF1 = f1
	pb.ArgF2 = f2
	pb.ArgF3 = f3
	pb.ArgS1 = s1
	src.RecordAdd("ShowInf1F3", pb)
}

var tag int32 = 0

func CreateShowObj1() src.ShowInf1 {
	o := &ShowObj1{}
	tag++
	o.tag = tag
	pb := &record.CreateShowObj1{}
	pb.NewObjTag = o.tag
	src.RecordAdd("CreateShowObj1", pb)
	return o
}
