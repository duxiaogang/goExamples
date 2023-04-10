package main

import "fmt"

type T int

const (
	A T = iota
	B
	C
	D
	E
	F
	G
	Count
)

func main() {
	fmt.Println(A, B, C, D, E, F, G, Count)
	fmt.Println(T(10))
	var t T = 100
	if t == Count {
		fmt.Println("error")
	}
}
