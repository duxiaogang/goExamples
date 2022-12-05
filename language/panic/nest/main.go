package main

import "fmt"

func main() {
	defer fmt.Println("in main 4")
	defer fmt.Println("in main 3")

	defer func() {
		defer fmt.Println("in main 2")
		defer func() {
			defer fmt.Println("in main 1")
			panic("panic again and again")
		}()
		panic("panic again")
	}()
	panic("panic once")
}
