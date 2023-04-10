package main

import (
	"fmt"
	"reflect"
)

type I1 interface {
	I1M1()
	I1M2()
	I1M3()
}

type I2 interface {
	I2M1()
	I2M2()
	I2M3()
}

type O1 struct{}

func (o *O1) O1M1() {}
func (o *O1) O1M2() {}
func (o *O1) O1M3() {}

type O2 struct{}

func (o *O2) O2M1() {}
func (o *O2) O2M2() {}
func (o *O2) O2M3() {}

type O3 struct{}

func (o *O3) O3M1() {}
func (o *O3) O3M2() {}
func (o *O3) O3M3() {}

type O4 struct{}

func (o *O4) O4M1() {}
func (o *O4) O4M2() {}
func (o *O4) O4M3() {}

type O99 struct {
	I1
	I2 I2

	O1
	O2 O2
	*O3
	O4 *O4
}

func (o *O99) O99M1() {}
func (o *O99) O99M2() {}
func (o *O99) O99M3() {}

func main() {
	o := &O99{}
	t := reflect.TypeOf(o)
	fmt.Println("O99's NumMethod()=", t.NumMethod())
	for i := 0; i < t.NumMethod(); i++ {
		fmt.Printf("O99's Method(%d).Name=%s\n", i, t.Method(i).Name)
	}
}
