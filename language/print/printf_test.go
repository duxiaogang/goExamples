package print

import (
	"fmt"
	"testing"
)

type inf interface {
	method1()
}

type imp struct {
	v int32
}

func (i imp) method1() {
	fmt.Println("imp.method1()")
}

func TestPrintfP(t *testing.T) {
	i32 := int32(0)
	//fmt.Printf("%p\n", i32) //首先，不是所有变量都可以%p
	fmt.Printf("1, %p\n", &i32)

	s := "hello"
	s2 := s
	//fmt.Printf("%p\n", s)
	//输出结果不一样，符合预期，就是string header本身的地址，而不是字符串在哪
	fmt.Printf("2, %p, %p\n", &s, &s2)

	pi := &i32
	pi2 := pi
	//输出一致，指针输出的结果是指向的目标位置
	fmt.Printf("3, %p, %p\n", pi, pi2)

	f := func() {}
	f2 := f
	//输出一致，就是函数地址，或者说closure struct的地址
	fmt.Printf("4, %p, %p\n", f, f2)

	m := make(map[string]string)
	m2 := m
	//输出一致
	fmt.Printf("5, %p, %p\n", m, m2)

	o := imp{}
	o2 := o
	//fmt.Printf("%p\n", o)
	//输出不一致
	fmt.Printf("6, %p, %p\n", &o, &o2)

	var i inf = o
	i2 := i
	//打印的啥？
	//果然，结果很奇怪，其实就不应该能打印
	fmt.Printf("7, %p, %p\n", i, i2)
}
