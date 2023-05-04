package main

import (
	"fmt"
	"sync"
)

var i1, i2, i3, i4 int

func f(wg *sync.WaitGroup, pI *int) {
	defer wg.Done()

	for i := 0; i < 4*1000*1000*1000; i++ {
		*pI++
	}
}

func main() {
	wg := &sync.WaitGroup{}

	wg.Add(4)
	go f(wg, &i1)
	go f(wg, &i2)
	go f(wg, &i3)
	go f(wg, &i4)
	wg.Wait()

	fmt.Printf("&i1=%p, &i2=%p, &i3=%p, &i4=%p\n", &i1, &i2, &i3, &i4)
	fmt.Printf("i1=%v, i2=%v, i3=%v, i4=%v\n", i1, i2, i3, i4)
}
