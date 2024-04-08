package main

import (
	"fmt"
	"unsafe"
)

type emptyInterface struct {
	typ  unsafe.Pointer
	word unsafe.Pointer
}

//go:nosplit
func noescape(p unsafe.Pointer) unsafe.Pointer {
	x := uintptr(p)
	//g = p
	return unsafe.Pointer(x ^ 0)
}

//go:noinline
func a(x any) {
	eface := *(*emptyInterface)(unsafe.Pointer(&x))
	fmt.Printf("%d\n", *(*int)(noescape(eface.word)))
	fmt.Printf("%p\n", noescape(eface.word))
	//fmt.Printf("%d\n", *(*int)(eface.word))
	//fmt.Printf("%p\n", eface.word)
}

func main() {
	var i int = 102455
	//fmt.Printf("%p\n", noescape(unsafe.Pointer(&i)))
	fmt.Printf("%p\n", unsafe.Pointer(&i))
	a(i)
}
