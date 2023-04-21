package main

import (
	"fmt"
)

func main() {
	//go func() {
	//	for range time.Tick(time.Second) {
	//		fmt.Println("tick")
	//	}
	//}()

	var ch chan int
	ch = make(chan int, 0)
	close(ch)

	//go func() {
	//	time.Sleep(time.Second)
	//	ch = make(chan int, 0)
	//	ch <- 999
	//}()

	select {
	case x, ok := <-ch:
		fmt.Println("got, ok =", ok)
		fmt.Println(x)
	}
}
