package main

import (
	"fmt"
)

var ch = make(chan int, 0)
var a string

func f() {
	a = "hello, world, from f()"
	<-ch
}

func main() {
	a = "from main()"
	go f()
	ch <- 0
	fmt.Println(a)

	//runtime.SetFinalizer()
}
