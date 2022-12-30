package main

import (
	"fmt"
	"testing"
	"unsafe"
)

type tflag uint8
type nameOff int32
type typeOff int32

type _type struct {
	size       uintptr
	ptrdata    uintptr // size of memory prefix holding all pointers
	hash       uint32
	tflag      tflag
	align      uint8
	fieldAlign uint8
	kind       uint8
	// function for comparing objects of this type
	// (ptr to object A, ptr to object B) -> ==?
	equal func(unsafe.Pointer, unsafe.Pointer) bool
	// gcdata stores the GC type data for the garbage collector.
	// If the KindGCProg bit is set in kind, gcdata is a GC program.
	// Otherwise it is a ptrmask bitmap. See mbitmap.go for details.
	gcdata    *byte
	str       nameOff
	ptrToThis typeOff
}

type eface struct {
	_type *_type
	data  unsafe.Pointer
}

func TestShowIntType(t *testing.T) {
	i32 := int32(1234567)
	var i interface{}
	//i = i32 //注意，传值会造成拷贝，所以x.data并不是&i32
	i = &i32

	fmt.Println(unsafe.Sizeof(i32), unsafe.Sizeof(i))
	fmt.Printf("%p\n", &i32)
	x := *(*eface)(unsafe.Pointer(&i))
	fmt.Printf("%p\n", x._type)
	fmt.Printf("%p\n", x.data)
}
