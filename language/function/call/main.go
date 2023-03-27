package main

import "fmt"

//go:noinline
func print(x int) {
	fmt.Println(x)
}

//go:noinline
func f1(a, b, c int) {
	r := a + b + c
	print(r)
}

//go:noinline
func f2(a, b int) (r1, r2, r3 int) {
	r1 = a + b
	r2 = a - b
	r3 = a * b
	return
}

//go:noinline
func f3(a, b, c int) int {
	r := a + b + c
	return r
}

func main() {
	f1(1, 2, 3)

	r1, r2, r3 := f2(1, 2)
	print(r1 + r2 + r3)

	f3(1, 2, 3)
}