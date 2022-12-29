package receiver

import (
	"fmt"
	"testing"
)

type s struct {
	v int
}

func (o s) changeV() {
	o.v = 1
}

func (o s) methodObjectReceiver() {
	o.v = 2
}

func (o *s) methodPointerReceiver() {
	o.v = 3
}

// 不能修改receiver，完全是因为传值/传址的原因
func TestChangeObject(t *testing.T) {
	o := s{}
	o.changeV()
	fmt.Println("TestChangeObject(), o.v=", o.v)

	po := &s{}
	po.changeV()
	fmt.Println("TestChangeObject(), po.v=", po.v)
}

func funcForObject(o s) {
	o.v = 4
}

func funcForPointer(po *s) {
	po.v = 5
}

func TestSugar(t *testing.T) {
	o := s{}
	//作为对象，语法糖非常严重
	o.methodObjectReceiver()
	o.methodPointerReceiver()
	//作为参数，没有语法糖，必须严格遵守形参
	funcForObject(o)
	funcForPointer(&o)

	po := &s{}
	//作为对象，语法糖非常严重
	po.methodObjectReceiver()
	po.methodPointerReceiver()
	//作为参数，没有语法糖，必须严格遵守形参
	funcForObject(*po)
	funcForPointer(po)
}
