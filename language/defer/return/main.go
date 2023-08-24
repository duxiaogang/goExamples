package main

import "fmt"

func f() int {
	x := 1
	defer func() {
		x = 0
	}()
	return x
}

func main() {
	fmt.Println(f())
}
