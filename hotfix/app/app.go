package app

import "fmt"

func GlobalFunc1() string {
	return "original GlobalFunc1()"
}

func GlobalFunc2() string {
	return "original GlobalFunc2()"
}

func GlobalFunc3() string {
	return "original GlobalFunc3()"
}

func privateFunc1() string {
	return "original privateFunc1()"
}

func CallPrivateFunc1() string {
	return privateFunc1()
}

type Object1 struct {
}

func (o *Object1) Method1() string {
	return "original Object1.Method1()"
}

func (o *Object1) privateMethod1() string {
	return "original Object1.privateMethod1()"
}

func (o *Object1) CallPrivateMethod1() string {
	return o.privateMethod1()
}

func CreateClosure1(i int) func() string {
	return func() string {
		return fmt.Sprintf("original CreateClosure1(), i=%d", i)
	}
}
