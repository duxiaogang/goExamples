package main

import (
	"fmt"
	"unsafe"
)

type S int

type S1 struct {
	i int64
	j int64
	k int64
	l int64
}

type S2 struct {
	m1 S1
	m2 S1
	m3 S1
	m4 S1
}

type S3 struct {
	m1 S2
	m2 S2
	m3 S2
	m4 S2
}

type S4 struct {
	m1 S3
	m2 S3
	m3 S3
	m4 S3
}

type S5 struct {
	m1 S4
	m2 S4
	m3 S4
	m4 S4
}

type S6 struct {
	m1 S5
	m2 S5
	m3 S5
	m4 S5
}

type S7 struct {
	m1 S6
	m2 S6
	m3 S6
	m4 S6
}

type S8 struct {
	m1 S7
	m2 S7
	m3 S7
	m4 S7
}

type S9 struct {
	m1 S8
	m2 S8
	m3 S8
	m4 S8
}

type S10 struct {
	m1 S9
	m2 S9
	m3 S9
	m4 S9
}

type S11 struct {
	m1 S10
	m2 S10
	m3 S10
	m4 S10
}

type S12 struct {
	m1 S11
	m2 S11
	m3 S11
	m4 S11
}

func main() {
	a := S(0)
	b := make([]*S, 2)
	b[0] = &a
	c := new(S)
	b[1] = c

	d := S(1)
	x := d + 1
	fmt.Println(x) //x为何会逃逸？ 有文章说和Println内部实现有关系，其实有点奇怪，可能还和interface{}有关系吧？不明白

	e := new(S)
	y := *e + 1
	fmt.Println(y) //y同理

	f := S8{} //sizeof(f)~=520k
	z := f.m4.m4.m4.m4.m4.m4.m4.l + 1
	fmt.Println(unsafe.Sizeof(f), z)

	//g := S12{} //sizeof(g)~=130m, 很慢，此时反编译显示调用了newobject, 但是-m显示没有逃逸？为什么会有这个差别？
	//u := g.m4.m4.m4.m4.m4.m4.m4.m4.m4.m4.m4.l + 1
	//fmt.Println(unsafe.Sizeof(g), u)

	h := make([]int, 10, 10)
	for i, _ := range h {
		h[i] = i
	}

	l := make([]int, 1000000, 1000000)
	for i, _ := range l {
		l[i] = i
	}
}
