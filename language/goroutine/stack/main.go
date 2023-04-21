package main

import (
	"fmt"
)

func main() {
	//runtime.ResetInfloopChecker(100)

	defer func() {
		if e := recover(); e != nil {
			fmt.Printf("main(), e=%v\n", e)
		}
	}()

	for {
	}
}
