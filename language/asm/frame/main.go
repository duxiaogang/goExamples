package main

import "fmt"

//go:nosplit
func asmFunc1()

func goFunc1() {
	fmt.Println("goFunc1")

	panic("xxx")
}

func f1() {
	defer fmt.Println("f1's defer")

	asmFunc1()
}

func main() {
	f1()
}
