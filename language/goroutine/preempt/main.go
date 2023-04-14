package main

import (
	"fmt"
	"time"
)

var data [110]int64

func cpu100(index int) {
	for {
		data[index]++
	}
}

func main() {
	for i := 0; i < 100; i++ {
		go cpu100(i)
	}

	ch := time.Tick(1 * time.Second)
	for {
		select {
		case <-ch:
			fmt.Println(data)
		}
	}
}
