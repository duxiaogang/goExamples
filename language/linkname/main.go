package main

import (
	"fmt"
	"unsafe"
)

//go:linkname nanotime1 runtime.nanotime1
func nanotime1() int64

func main() {
	i := 0
	fmt.Println(unsafe.Sizeof(i))
	fmt.Println(nanotime1())
}
