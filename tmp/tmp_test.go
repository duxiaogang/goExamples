package tmp

import (
	"fmt"
	"io"
	"os"
	"testing"
	"unsafe"
)

type itab struct {
	inter uintptr
	_type uintptr
	//...ignore
}

type iface struct {
	tab  *itab
	data unsafe.Pointer //为什么这里要用Pointer而不是uintptr
}

type eface struct {
	_type uintptr
	data  unsafe.Pointer
}

func Test1(t *testing.T) {
	var r io.Reader
	fmt.Printf("initial r: %T, %v\n", r, r)

	fp, _ := os.OpenFile("tmp_test.go", os.O_RDWR, 0)
	fmt.Printf("fp: %T, %v\n", fp, fp)
	fmt.Printf("fp: %p, %p\n", &fp, fp)                        //fp是个指针，前面打印fp这个变量本身的地址，后面打印fp指向的地址
	fmt.Printf("fp: 0x%08x\n", *(*uint64)(unsafe.Pointer(fp))) //os.File结构的file指针

	r = fp
	fmt.Printf("r: %T, %v\n", r, r)

	i := *(*iface)(unsafe.Pointer(&r))
	fmt.Printf("r, _type=%#x, data=%#x\n", i.tab._type, i.data)

	var w io.Writer
	w = r.(io.Writer)
	fmt.Printf("w: %T, %v\n", w, w)

	i = *(*iface)(unsafe.Pointer(&w))
	fmt.Printf("w, _type=%#x, data=%#x\n", i.tab._type, i.data)

	var e interface{}
	e = w
	fmt.Printf("e: %T, %v\n", e, e)

	ef := (*eface)(unsafe.Pointer(&e))
	fmt.Printf("ef, _type=%#x, data=%#x\n", ef._type, ef.data)
}

func Test2(t *testing.T) {
	var i interface{}
	i = Test1
	fmt.Printf("addr of Test1 = %p\n", Test1)
	fmt.Printf("i.data = 0x%08x\n", uintptr((*iface)(unsafe.Pointer(&i)).data))
	fmt.Printf("i.data = 0x%08x\n", *(*uintptr)((*iface)(unsafe.Pointer(&i)).data))
}

type inf interface {
	f1()
}

type obj struct {
	inf
}

func (o *obj) f1() {
	fmt.Println("obj.f1()")
}

func Test3(t *testing.T) {
	o := obj{}
	o.f1()
}
