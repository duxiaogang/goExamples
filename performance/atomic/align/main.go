package main

import (
	"fmt"
	"sync/atomic"
)

type S struct {
	i1 int32
	i2 int32
}

func addN(v *int32, count int, done chan<- struct{}) {
	for i := 0; i < count; i++ {
		atomic.AddInt32(v, 1)
	}
	close(done)
}

func main() {
	arr := [1000]S{}
	i1 := &arr[0].i1
	i2 := &arr[999].i2
	fmt.Printf("&i1=%p, &i2=%p\n", i1, i2)

	done1 := make(chan struct{})
	go addN(i1, 1000*1000*1000, done1)

	done2 := make(chan struct{})
	go addN(i2, 1000*1000*1000, done2)

	select {
	case <-done1:
		fmt.Println("done1", *i1)
	case <-done2:
		fmt.Println("done2", *i2)
	}
}
