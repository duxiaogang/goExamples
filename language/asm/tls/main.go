package main

import "fmt"

//go:nosplit
func asmFunc1()

//go:nosplit
func asmFunc2()

func Func1(gAddr uint64) {
	fmt.Println(gAddr)
}

func main() {
	asmFunc1()
	asmFunc2()
}
