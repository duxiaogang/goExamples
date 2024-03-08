package client

import (
	"fmt"
	"replayCall/src"
)

type ShowObj1 struct {
}

func (o *ShowObj1) F1() {
	fmt.Println("client.ShowObj1.F1()")
}

func (o *ShowObj1) F2(i1 int32) {
	fmt.Printf("client.ShowObj1.F2(%d)\n", i1)
}

func (o *ShowObj1) F3(i1, i2 int32, f1, f2, f3 float32, s1 string) {
	fmt.Printf("client.ShowObj1.F3(%d, %d, %f, %f, %f, %s)\n", i1, i2, f1, f2, f3, s1)
}

func CreateShowObj1() src.ShowInf1 {
	fmt.Printf("client.CreateShowObj1()\n")
	return &ShowObj1{}
}
