package main

import (
	"fmt"
	"sync"
)

var i1, i2 int

func f1(wg *sync.WaitGroup) {
	defer wg.Done()

	for i := 0; i < 10*1000*1000*1000; i++ {
		i1++
	}
}

func f2(wg *sync.WaitGroup) {
	defer wg.Done()

	for i := 0; i < 10*1000*1000*1000; i++ {
		i2++
	}
}

func main() {
	wg := &sync.WaitGroup{}

	wg.Add(2)
	go f1(wg)
	go f2(wg)
	wg.Wait()

	fmt.Printf("&i1=%p, &i2=%p\n", &i1, &i2)
	fmt.Printf("i1=%v, i2=%v\n", i1, i2)
}
