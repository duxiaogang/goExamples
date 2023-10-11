package main

import "fmt"

//go:nosplit
func asmFunc1()

var g int

//go:noinline
//go:nosplit
func goFunc1() {
	goFunc2()
}

//go:noinline
//go:nosplit
func goFunc2() int {
	g = 100
	return 0
}

func main() {
	//goFunc1()

	asmFunc1()

	fmt.Println(g)
}
