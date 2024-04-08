package main

import "fmt"

//go:noinline
func makeStackBigger(count int) {
	if count == 0 {
		return
	}
	makeStackBigger(count - 1)
}

//go:noinline
func x() {
	fmt.Println("Hello, World!")

	makeStackBigger(1000 * 1000)
	//makeStackBigger(1)
}

//go:noinline
func y() {
	x()
}

//go:noinline
//go:nosplit
func yNoSplit() {
	x()
}

func main() {
	y()
	yNoSplit()
}
