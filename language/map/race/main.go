package main

import (
	"fmt"
	"time"
)

func main() {
	m := make(map[int]int)

	//write
	go func() {
		for i := 0; i < 1000*1000*1000; i++ {
			m[i] = i
		}
	}()

	//read
	go func() {
		for {
			sum := 0
			for k, v := range m {
				sum += k
				sum += v
			}
			fmt.Println(sum)
		}
	}()

	for {
		time.Sleep(1)
	}
}
