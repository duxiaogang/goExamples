package main

import (
	"fmt"
	"runtime/debug"
)

func f1() {
	f2()
}

func f2() {
	f3()
}

func f3() {
	f4()
}

func f4() {
	f5()
}

func f5() {
	debug.PrintStack()

	// or

	fmt.Println(string(debug.Stack()))
}

func main() {
	f1()
}
