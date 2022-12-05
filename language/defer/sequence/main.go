package main

import (
	"fmt"
)

func main() {
	defer fmt.Println("main 1")
	defer fmt.Println("main 2")
	defer fmt.Println("main 3")

	fmt.Println("in loop")
	for i := 0; i < 10; i++ {
		defer func() {
			fmt.Println("defer(loop): ", i)
		}()
		fmt.Println(i)
	}

	fmt.Println("in buckets")
	for i := 0; i < 10; i++ {
		{
			defer func(i int) {
				fmt.Println("defer(buckets): ", i)
			}(i)
			fmt.Println(i)
		}
	}

	fmt.Println("in condition")
	for i := 0; i < 10; i++ {
		if true {
			defer func() {
				fmt.Println("defer(condition): ", i)
			}()
			fmt.Println(i)
		}
	}

	fmt.Println("in function")
	for i := 0; i < 10; i++ {
		f := func(i int) {
			defer func() {
				fmt.Println("defer(function): ", i)
			}()
			fmt.Println(i)
		}
		f(i)
	}
}
