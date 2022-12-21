package main

import "fmt"

func f1() {
	defer fmt.Println("f1() defer")

	fmt.Println("f1() 1")
	f2()
	fmt.Println("f1() 2")
}

func f2() {
	defer fmt.Println("f2() defer")
	defer func() {
		if e := recover(); e != nil {
		}
	}()

	fmt.Println("f2() 1")
	f3()
	fmt.Println("f2() 2")
}

func f3() {
	defer fmt.Println("f3() defer")

	fmt.Println("f3() 1")
	panic("panic from f3")
	fmt.Println("f3() 2")
}

func main() {
	f1()
}
