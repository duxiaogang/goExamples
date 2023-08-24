package main

import (
	"fmt"
	"runtime"
	"sync/atomic"
	"time"
)

type Foo struct {
}

var fCount int32

func NewFoo() *Foo {
	foo := &Foo{}
	runtime.SetFinalizer(foo, func(f *Foo) {
		//f.Finalizer()
		//fmt.Printf("Foo.Finalizer() be called, f=%p\n", f)
		atomic.AddInt32(&fCount, 1)
	})
	return foo
}

func (f *Foo) Finalizer() {
	fmt.Printf("Foo.Finalizer() be called, f=%p\n", f)
}

func x() {
	len := 1000 * 1000
	arr := make([]*Foo, len)
	for i := 0; i < len; i++ {
		arr[i] = NewFoo()
	}
}

func y() {
	len := 1000 * 1000
	arr := make([]int, len)
	for i := 0; i < len; i++ {
		arr[i] = i
	}
}

func main() {
	x()
	y()

	//time.Sleep(100 * time.Second)

	for {
		time.Sleep(time.Second)
		runtime.GC()
		fmt.Println(atomic.LoadInt32(&fCount))
	}
}
