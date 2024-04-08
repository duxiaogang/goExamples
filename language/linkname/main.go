package main

import (
	"fmt"
	"reflect"
	"syscall"
	"time"
	"unsafe"
)

//go:linkname nanotime1 runtime.nanotime1
func nanotime1() int64

type funcID uint8
type funcFlag uint8

type _func struct {
	entryoff uint32 // start pc, as offset from moduledata.text/pcHeader.textStart
	nameoff  int32  // function name

	args        int32  // in/out args size
	deferreturn uint32 // offset of start of a deferreturn call instruction from entry, if any.

	pcsp      uint32
	pcfile    uint32
	pcln      uint32
	npcdata   uint32
	cuOffset  uint32 // runtime.cutab offset of this function's CU
	funcID    funcID // set for certain special runtime functions
	flag      funcFlag
	_         [1]byte // pad
	nfuncdata uint8   // must be last, must end on a uint32-aligned boundary
}

type funcInfo struct {
	*_func
	datap unsafe.Pointer
}

// func findfunc(pc uintptr) funcInfo
//
//go:linkname findfunc runtime.findfunc
func findfunc(pc uintptr) funcInfo

//go:noinline
func hello() {
	fmt.Println("hello, world!")
}

func main() {
	//i := 0
	//fmt.Println(unsafe.Sizeof(i))
	//fmt.Println(nanotime1())

	hello()

	{
		fi := findfunc(uintptr(0x000000000105cc40)) //000000000105cc40 t _runtime.abort.abi0
		f := fi._func
		if f != nil {
			fmt.Println("abort=", f.funcID)
		}
	}

	{
		fi := findfunc(uintptr(0x000000000105e2c0)) //000000000105e2c0 t _runtime.asyncPreempt.abi0
		f := fi._func
		if f != nil {
			fmt.Println("asyncPreempt=", f.funcID)
		}
	}

	{
		fi := findfunc(uintptr(0x000000000105ac40)) //000000000105ac40 t _runtime.mcall
		f := fi._func
		if f != nil {
			fmt.Println("mcall=", f.funcID)
		}
	}

	//change?
	{
		fi := findfunc(uintptr(0x000000000108ec60)) //000000000108d200 t _main.hello
		f := fi._func
		if f != nil {
			fmt.Printf("hello, f=%p, cuOffset=%v, funcID=%v, flag=%v\n", f, f.cuOffset, f.funcID, f.flag)
			modifyBinary(uintptr(unsafe.Pointer(&f.funcID)), []byte{111})
		}
	}
	{
		fi := findfunc(uintptr(0x000000000108ec60)) //000000000108d200 t _main.hello
		f := fi._func
		if f != nil {
			fmt.Printf("hello, f=%p, cuOffset=%v, funcID=%v, flag=%v\n", f, f.cuOffset, f.funcID, f.flag)
		}
	}

	for {
		time.Sleep(time.Second)
	}
}

// copy from gomonkey
func modifyBinary(target uintptr, bytes []byte) {
	function := entryAddress(target, len(bytes))
	err := mprotectCrossPage(target, len(bytes), syscall.PROT_READ|syscall.PROT_WRITE)
	if err != nil {
		panic(err)
	}
	copy(function, bytes)
	err = mprotectCrossPage(target, len(bytes), syscall.PROT_READ)
	if err != nil {
		panic(err)
	}
}

func mprotectCrossPage(addr uintptr, length int, prot int) error {
	pageSize := syscall.Getpagesize()
	for p := pageStart(addr); p < addr+uintptr(length); p += uintptr(pageSize) {
		page := entryAddress(p, pageSize)
		if err := syscall.Mprotect(page, prot); err != nil {
			return err
		}
	}
	return nil
}

func entryAddress(p uintptr, l int) []byte {
	return *(*[]byte)(unsafe.Pointer(&reflect.SliceHeader{Data: p, Len: l, Cap: l}))
}

func pageStart(ptr uintptr) uintptr {
	return ptr & ^(uintptr(syscall.Getpagesize() - 1))
}
