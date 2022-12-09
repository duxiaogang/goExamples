package main

import (
	"fmt"
	"unsafe"
)

func a() int { return 1 }

var b = func() int { return 2 }

func main() {
	f := a
	fmt.Printf("%v, %v, %v\n", a(), b(), f())
	fmt.Printf("%T, %T, %T\n", a, b, f)
	fmt.Printf("%v, %v, %v\n", a, b, f)
	fmt.Printf("%p, %p, %p, %p, %p\n", a, b, &b, f, &f)
	fmt.Printf("b: 0x%x, 0x%x, 0x%x\n", &b, *(*uint64)(unsafe.Pointer(&b)), **(**uint64)(unsafe.Pointer((&b))))
	fmt.Printf("f: 0x%x, 0x%x, 0x%x\n", &f, *(*uint64)(unsafe.Pointer(&f)), **(**uint64)(unsafe.Pointer((&f))))
}
